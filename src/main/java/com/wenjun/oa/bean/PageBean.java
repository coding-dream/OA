package com.wenjun.oa.bean;

import java.util.List;

/**
 * 分页功能中的一页的信息
 *
 * @author tyg
 *
 */
public class PageBean  {

	// 指定的或是页面参数
	private int currentPage; // 当前页
	private int pageSize; // 每页显示多少条

	// 查询数据库
	private int recordCount; // 总记录数
	private List recordList; // 本页的数据列表(----------- 主要显示信息)

	// 计算
	private int pageCount; // 总页数
	private int beginPageIndex; // 页码列表的开始索引（包含）
	private int endPageIndex; // 页码列表的结束索引（包含）

	/**
	 * 只接受前4个必要的属性，会自动的计算出其他3个属生的值
	 *
	 * @param currentPage
	 * @param pageSize
	 * @param recordCount
	 * @param recordList
	 */
	public PageBean(int currentPage, int pageSize,int recordCount , List recordList) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.recordCount = recordCount;
		this.recordList = recordList;

		// 计算总页码
		pageCount = (recordCount + pageSize - 1) / pageSize;

		// 计算 beginPageIndex 和 endPageIndex
		// >> 总页数不多于10页，则全部显示
		if (pageCount <= 10) {
			beginPageIndex = 1;
			endPageIndex = pageCount;
		}
		// ---------------------->> 总页数多于10页，则显示当前页附近的共10个页码            例子: 假如页数 为  13页
		else {
			// 当前页附近的共10个页码（前4个 + 当前页 + 后5个）
			beginPageIndex = currentPage - 4; //(当前页是:8    4~13   当前页: 10   6~15 )
			endPageIndex = currentPage + 5;

			//  下面 两个 if 如果成立 ，会覆盖 掉上面 设置 的 beginPageIndex  endPageIndex;

			// 当前面的页码不足 4 个 时，则显示前10个页码  ,   (当前: 2  1~10  当前:3  1~10  当前4：  1~10 )
			if (beginPageIndex < 1) {
				beginPageIndex = 1;
				endPageIndex = 10;
			}
			// 当后面的页码不足 5  个时，则显示后10个页码
			if (endPageIndex > pageCount) {					 // (当前: 7  3~12  当前:10  6~15 但是总共没有15页，故这里 endPageIndex = 13 ,beginPageIndex= 13 - 10 + 1 ) beginPageIndex是在endPageIndex基础上去掉10条记录
				endPageIndex = pageCount;
				beginPageIndex = pageCount - 10 + 1;
			}
		}
	}

	public List getRecordList() {
		return recordList;
	}

	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getBeginPageIndex() {
		return beginPageIndex;
	}

	public void setBeginPageIndex(int beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}

	public int getEndPageIndex() {
		return endPageIndex;
	}

	public void setEndPageIndex(int endPageIndex) {
		this.endPageIndex = endPageIndex;
	}

}
