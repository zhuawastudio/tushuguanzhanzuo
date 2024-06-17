package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 房间占座
 *
 * @author 
 * @email
 */
@TableName("fangjian_order")
public class FangjianOrderEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public FangjianOrderEntity() {

	}

	public FangjianOrderEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 订单号
     */
    @TableField(value = "fangjian_order_uuid_number")

    private String fangjianOrderUuidNumber;


    /**
     * 房间
     */
    @TableField(value = "fangjian_id")

    private Integer fangjianId;


    /**
     * 学生
     */
    @TableField(value = "xuesheng_id")

    private Integer xueshengId;


    /**
     * 订单类型
     */
    @TableField(value = "fangjian_order_types")

    private Integer fangjianOrderTypes;


    /**
     * 占的座位
     */
    @TableField(value = "buy_zuowei_number")

    private String buyZuoweiNumber;


    /**
     * 占座日期
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat
    @TableField(value = "buy_zuowei_time")

    private Date buyZuoweiTime;


    /**
     * 占座时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：订单号
	 */
    public String getFangjianOrderUuidNumber() {
        return fangjianOrderUuidNumber;
    }


    /**
	 * 获取：订单号
	 */

    public void setFangjianOrderUuidNumber(String fangjianOrderUuidNumber) {
        this.fangjianOrderUuidNumber = fangjianOrderUuidNumber;
    }
    /**
	 * 设置：房间
	 */
    public Integer getFangjianId() {
        return fangjianId;
    }


    /**
	 * 获取：房间
	 */

    public void setFangjianId(Integer fangjianId) {
        this.fangjianId = fangjianId;
    }
    /**
	 * 设置：学生
	 */
    public Integer getXueshengId() {
        return xueshengId;
    }


    /**
	 * 获取：学生
	 */

    public void setXueshengId(Integer xueshengId) {
        this.xueshengId = xueshengId;
    }
    /**
	 * 设置：订单类型
	 */
    public Integer getFangjianOrderTypes() {
        return fangjianOrderTypes;
    }


    /**
	 * 获取：订单类型
	 */

    public void setFangjianOrderTypes(Integer fangjianOrderTypes) {
        this.fangjianOrderTypes = fangjianOrderTypes;
    }
    /**
	 * 设置：占的座位
	 */
    public String getBuyZuoweiNumber() {
        return buyZuoweiNumber;
    }


    /**
	 * 获取：占的座位
	 */

    public void setBuyZuoweiNumber(String buyZuoweiNumber) {
        this.buyZuoweiNumber = buyZuoweiNumber;
    }
    /**
	 * 设置：占座日期
	 */
    public Date getBuyZuoweiTime() {
        return buyZuoweiTime;
    }


    /**
	 * 获取：占座日期
	 */

    public void setBuyZuoweiTime(Date buyZuoweiTime) {
        this.buyZuoweiTime = buyZuoweiTime;
    }
    /**
	 * 设置：占座时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：占座时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "FangjianOrder{" +
            "id=" + id +
            ", fangjianOrderUuidNumber=" + fangjianOrderUuidNumber +
            ", fangjianId=" + fangjianId +
            ", xueshengId=" + xueshengId +
            ", fangjianOrderTypes=" + fangjianOrderTypes +
            ", buyZuoweiNumber=" + buyZuoweiNumber +
            ", buyZuoweiTime=" + buyZuoweiTime +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
