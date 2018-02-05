package org.iii.ee100.sample.game;

import static org.junit.Assert.*;

import org.junit.Test;

import game.Game;
import game.GameDao;


public class GameDaoTest {

	@Test
	public void crudTest() {
		GameDao gd = new GameDao();
		//test findAll()
		assertEquals(0, gd.findAll().size());
		
		//test insert()
		Game game1 = new Game();
		game1.setId((long) 1);
		game1.setName("Mario_Kart8");
		game1.setPublisher("Nintendo");
		game1.setPlatform("Nintendo_Switch"); 
		game1.setRelease_date(java.sql.Date.valueOf("2017-04-28"));
		gd.insert(game1);
		assertEquals(1, gd.findAll().size());
		
		//test insert()
		game1.setName("Mario_Kart8_Deluxe");
		gd.update(game1);
		assertEquals(game1.getName(), gd.findById(game1.getId()).getName());
	
		//test delete()
		gd.delete((long) 1);
		assertEquals(0, gd.findAll().size());
		
	}

}