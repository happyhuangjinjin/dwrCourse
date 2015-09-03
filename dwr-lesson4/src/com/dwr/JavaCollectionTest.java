package com.dwr;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * 调试界面 http://pc201310051949:8080/dwr-lesson2/dwr/index.html
 * 
 * Vector
 * 
 * @author Administrator
 * 
 */
public class JavaCollectionTest {
	

	public Map<String, String> getMap() {

		Map<String, String> ret = new HashMap<String, String>();
		ret.put("key1", "value1");
		ret.put("key2", "value2");
		return ret;
	}

	public void setMap(Map<String, String> map) {
		System.out.println(map);
	}

	public List<String> getList() {

		List<String> ret = new ArrayList<String>();
		ret.add("value1");
		ret.add("value2");
		return ret;
	}

	public void setList(List<String> list) {
		System.out.println(list);
	}
	
	public Set<String> getSet() {

		Set<String> ret = new HashSet<String>();
		ret.add("value1");
		ret.add("value2");
		ret.add("value2");
		return ret;
	}

	public void setSet(Set<String> set) {
		System.out.println(set);
	}
}
