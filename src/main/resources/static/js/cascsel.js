/**
 * Register & initialize select
 */
function registerSelector(data, array, index) {
    if (!array || array.length == 0) {
        return;
    }
    
    if (index < 0 || index >= array.length) {
        return;
    }
    
    if (!data[array[index]]) {
        return;
    }
    
    var $select = $("[id='" + array[index] + "']");
    
    /* Initialize default select */
    var dataList = data[array[index]]["dataMap"]["default"];
    if (dataList && dataList.length > 0) {
        $select.empty();
        $select.append("<option value=''>" + "请选择" + "</option>");
        for (var i = 0; i < dataList.length; i++) {
            $select.append("<option value='" + dataList[i]+ "'>" + dataList[i] + "</option>")
        }
    }
    
    /* Register onchange event for select */
    if ((index + 1) < array.length && data[array[index + 1]]) {
        $select.bind("change", function(event) {
            var value = $select.val();
            var dataList = data[array[index + 1]]["dataMap"][value];
            
            $nextSelect = $("[id='" + array[index + 1] + "']");
            /* If the option of select changes, refactor the cascape select */
            if (dataList && dataList.length > 0) {
                $nextSelect.empty();
                $nextSelect.append("<option value=''>" + "请选择" + "</option>");
                for (var i = 0; i < dataList.length; i++) {
                	var value = dataList[i]["value"];
                	var values=value.split(',');//注split可以用字符或字符串分割
                	if(value.indexOf(",")>0){
                		$nextSelect.append("<option value='" + values[0] + "'>" + dataList[i]["name"] + " （红包类型id:" + values[0] + ",奖励类型id:" + values[1] +"）"+"</option>");
                	}else{
                		$nextSelect.append("<option value='" + dataList[i] + "'>" + dataList[i] + "</option>");
                	}
                }
            } else {
                $nextSelect.empty();
            }
            
            /* Trigger */
            $nextSelect.trigger("change");
        });
        
        $select.trigger("change");
    }
    
    //registerSelector(data, array, index + 1);
    
}

//显示级联信息
function selectSelector(data, array, index,selectType) {
    if (!array || array.length == 0) {
        return;
    }
    
    if (index < 0 || index >= array.length) {
        return;
    }
    
    if (!data[array[index]]) {
        return;
    }
    var $select = $("[id='" + array[index+1] + "']");
    
    var dataList = data[array[index + 1]]["dataMap"][selectType];
    
    /* Initialize default select */
    if (dataList && dataList.length > 0) {
        $select.empty();
        $nextSelect.append("<option value=''>" + "请选择" + "</option>");
        for (var i = 0; i < dataList.length; i++) {
    		//$select.append("<option value='" + dataList[i]["value"] + "'>" + dataList[i]["name"] + "</option>");
    		var value = dataList[i]["value"];
        	var values=value.split(',');//注split可以用字符或字符串分割
        	if(value.indexOf(",")>0){
        		$nextSelect.append("<option value='" + values[0] + "'>" + dataList[i]["name"] + " （红包类型id:" + values[0] + ",奖励类型id:" + values[1] +"）"+"</option>");
        	}else{
        		$nextSelect.append("<option value='" + dataList[i]["value"] + "'>" + dataList[i]["name"] + "</option>");
        	}
        }
    }
}
