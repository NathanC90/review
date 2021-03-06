package org.iii.ee100.animour.halfway.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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

	@RequestMapping(value = "/halfway", method = RequestMethod.GET)
	public String index(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		Page<Animal> page = animalservice.getAnimalPage(pageNumber, pageSize); // pageNumber=頁數 pageSize=一頁幾筆資料
		model.addAttribute("animalpage", page);
//		List<Animal> animals = animalservice.getAllDesc();
//		model.addAttribute("animals", animals);

		Map<String, Integer> citycount = new HashMap<>();
		List<String> citys = animalservice.searchDistinctCity();
		for (String city : citys) {
			// System.out.println(city);
			citycount.put(city, animalservice.getCityCount(city));
		}
		model.addAttribute("citys", citys);
		model.addAttribute("citycount", citycount);
		return "/halfway/halfwayIndex";
	}

	// 分頁處理
	@RequestMapping(value = "/halfway/pageQueryAll", method = RequestMethod.GET)
	public String getAnimalPage(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		Page<Animal> page = animalservice.getAnimalPage(pageNumber, pageSize); // pageNumber=頁數 pageSize=一頁幾筆資料
		model.addAttribute("animalpage", page);
		
		// System.out.println(page);
//		int current = page.getNumber() + 1;
//		int begin = Math.max(1, current - 5);
//		int end = Math.min(begin + 10, page.getTotalPages());
//		model.addAttribute("beginIndex", begin);
//		model.addAttribute("endIndex", end);
//		model.addAttribute("currentIndex", current);

		return "/halfway/halfwayIndex";
	}

	// 轉跳至insert表單
	@RequestMapping(value = "/insertAnimalForm", method = { RequestMethod.GET })
	public String animalForm() {

		return "/halfway/insertAnimalForm";
	}
	
	// 轉跳至詳情頁面
	@RequestMapping(value = "/halfway/detail", method = { RequestMethod.GET })
	public String animalDetail(Long id, Model model) {
		// 暫時先給一個假的member
		Member member = new Member();
		member.setId(1L);
		member.setName("資策會金太妍");
		Animal animal = animalservice.getOne(id);
		animal.setMember(member);
		
		model.addAttribute("animal", animal);

		return "/halfway/animalDetail";
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
		String fileType = contentType.substring(contentType.indexOf("/") + 1);

		if ((!image.isEmpty()) && ((fileType.equals("jpeg")) || (fileType.equals("png")))) {
			try {
				String originName = image.getOriginalFilename();
				fileName = "id_" + an.getId() + originName.substring(originName.lastIndexOf(".")).trim();
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
