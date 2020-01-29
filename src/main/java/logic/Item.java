package logic;

import org.springframework.web.multipart.MultipartFile;

public class Item {
	private int category1;
	private int category2;
	private String content;
	private MultipartFile file1;

	
	public int getCategory1() {
		return category1;
	}

	public void setCategory1(int category1) {
		this.category1 = category1;
	}

	public int getCategory2() {
		return category2;
	}

	public void setCategory2(int category2) {
		this.category2 = category2;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public MultipartFile getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	

}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            