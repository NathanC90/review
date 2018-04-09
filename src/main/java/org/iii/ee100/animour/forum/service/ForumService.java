package org.iii.ee100.animour.forum.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.dao.CategoryDao;
import org.iii.ee100.animour.forum.dao.CommentDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class ForumService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private ArticleDao articleDao;
	
	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	public Page<Article> getPage(int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo-1, pageSize);
		return articleDao.findAll(pageable);
	}

	public void insert(Article article) {
		articleDao.save(article);

	}
	
	public void insertComment(Comment comment) {
		commentDao.save(comment);

	}

	public void update(Article article) {
		articleDao.save(article);

	}

	public void delete(Long id) {
		articleDao.delete(id);

	}

	public List<Article> getAll() {
		return Lists.newArrayList(articleDao.findAll());
	}

	public Article getOne(Long id) {
		return articleDao.findOne(id);
	}
	
	public Member getOneMember(Long id) {
		return memberDao.findOne(id);
	}

	public Category getOneCateGory(Long id) {
		return categoryDao.findOne(id);
	}

	public List<Article> getNewPostThree() {
		return articleDao.findTop3ByOrderByPostTimeDesc();
	}

	public List<Article> getPopularFour() {
		return articleDao.findTop4ByOrderByClickDesc();
	}
	
	public List<Comment> getCommentByArticleId(Long id){
		return commentDao.findByArticleId(id);
	}
	
	public List<Article> getSearchBySubject(String subject){
		return articleDao.findBySubjectContaining(subject);
	}
	
	public Page<Article> getSearchByCategoryId(Long categoryId,int pageNo,int pageSize){
		PageRequest pageable = new PageRequest(pageNo-1, pageSize);
		return articleDao.findByCategoryId(categoryId, pageable);
	}
	
	public List<Category> getAllCategory(){
		return Lists.newArrayList(categoryDao.findAll());
	}
	
}
