package org.iii.ee100.animour.halfway.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AnimalController {

	@Autowired
	AnimalService animalservice;

	@RequestMapping(path = { "/halfway" }, method = { RequestMethod.GET })
	public String index(Model model) {
		List<Animal> animals = animalservice.getAllDesc();
		model.addAttribute("animals", animals);

		return "/halfway/halfwayIndex";
	}

	@RequestMapping(value = "/insertAnimalForm", method = { RequestMethod.GET })
	public String animalForm() {

		return "/halfway/insertAnimalForm";
	}

	// 接收使用者提送表單， Spring mvc架構中，用Multipart 讀取表單中上傳的檔案
	// @RequestParam = request.getParameter("file")
	@RequestMapping(value = "/insertAnimal", method = { RequestMethod.POST })
	public String insertAnimal(@RequestParam(value = "file", required = false) MultipartFile image, Animal an,
			HttpServletRequest request, Model model) {

		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		an.setUpload(ts);
		// 先insert，才能取得自動生成的id，做為儲存圖片的檔名
		animalservice.insert(an);
		
		// 圖片
		String fileName = null;
		String uploadRootPath = request.getServletContext().getRealPath("images/halfway/animal/");
		System.out.println("uploadRootPath=" + uploadRootPath);

		// 如果檔案路徑不存在，創造一個
		File uploadRootDir = new File(uploadRootPath);
		if (!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}

		String contentType = image.getContentType();
		String fileType = contentType.substring(contentType.indexOf("/")+1);

		if ((!image.isEmpty()) && ((fileType.equals("jpeg")) || (fileType.equals("png")))) {
			try {
				String originName = image.getOriginalFilename();
				fileName = "id_"+an.getId()+originName.substring(originName.lastIndexOf(".")).trim();
				// 把讀進來的檔案，轉成byte陣列
				byte[] bytes = image.getBytes();
				BufferedOutputStream buffout = new BufferedOutputStream(
						new FileOutputStream(new File(uploadRootPath + fileName)));
				// 利用Outputstream 把檔案內容(byte陣列)透過write方法寫出，至硬碟端檔案(檔案名稱為"/tmp"+fileName)
				buffout.write(bytes);
				buffout.close();
			
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println(fileName);
		an.setFileName(fileName);
		// 儲存圖片之後，更新檔名
		animalservice.update(an);
		model.addAttribute("inanimal", an);

		return "/halfway/insertSuccess";
	}

	@RequestMapping(value = "/updateAnimal", method = { RequestMethod.POST })
	public String updateAnimal(Animal an, Model model) {
		if (an != null) {
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			an.setUpload(ts);
			animalservice.update(an);
			model.addAttribute("upanimal", an);
		}
		return "/halfway/FindAnimal";
	}

	@RequestMapping(value = "/deleteAnimal", method = { RequestMethod.GET })
	public String deleteAnimal(Animal an, Model model) {
		an = animalservice.getOne(an.getId());
		if (an != null) {
			animalservice.delete(an.getId());
			model.addAttribute("dlanimalId", an.getId());
		}
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectAllAnimal")
	public String findAllAnimal(Model model) {
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectOneAnimal")
	public String findOneAnimal(Animal an, Model model) {
		an = animalservice.getOne(an.getId());
		if (an != null) {
			model.addAttribute("animal", an);
		}
		return "/halfway/FindAnimal";
	}

}
