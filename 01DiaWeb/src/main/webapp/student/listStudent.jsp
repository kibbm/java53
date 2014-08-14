<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>W2UI Demo: grid-3</title>
    <link rel="stylesheet" type="text/css" href="./dist/css/w2ui-1.4.1.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="./dist/js/w2ui-1.4.1.js"></script> 
    
</head>
<body>

listStudent.jsp start....!!

<div id="grid" style="width: 100%; height: 400px; overflow: hidden;"></div>
<br>
<!--<button class="btn" onclick="var obj = w2ui['grid']; obj.show.header = !obj.show.header; w2ui['grid'].refresh();">Header</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.toolbar = !obj.show.toolbar; w2ui['grid'].refresh();">Toolbar</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.columnHeaders = !obj.show.columnHeaders; w2ui['grid'].refresh();">Column Headers</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.footer = !obj.show.footer; w2ui['grid'].refresh();">Footer</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.lineNumbers = !obj.show.lineNumbers; w2ui['grid'].refresh();">Line Numbers</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.selectColumn = !obj.show.selectColumn; w2ui['grid'].refresh();">Select Column</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.expandColumn = !obj.show.expandColumn; w2ui['grid'].refresh();">Expand Column</button> --> 

<button class="btn" onclick="w2alert(w2ui.grid.getSelection());">Get Selection</button>

<script type="text/javascript">
$(function () {
	
    $('#grid').w2grid({ 
        name: 'grid', 
        header: 'Master',
        url: 'listStudentData.do', //'listStudent.do',       
        show: {
            header      : false,
            toolbar     : true,
            footer      : true,
            lineNumbers : true,
            //selectColumn: true
        },       
        multiSearch:false,//
        multiSelect:true,//select/unselect Records        
        columns: [                
			{ field: 'userId', caption: 'userId', size: '10%', sortable:true }, /* attr:'align=center'  */
            { field: 'password', caption: 'password', size: '5%' },
            { field: 'email', caption: 'Email', size: '15%' },
            { field: 'userName', caption: 'userName', size: '10%', sortable:true },
            { field: 'birthdate', caption: 'Birthdate', size: '10%', sortable:true},            
            { field: 'phone', caption: 'phone', size: '10%' },
            { field: 'addr', caption: 'addr', size: '10%' },
            { field: 'level', caption: 'level', size: '10%' },
            { field: 'joindate', caption: 'joindate', size: '10%', sortable:true},
            { field: 'flag', caption: 'flag', size: '5%', sortable:true }      
        ],
        searches: [         	       
            { field: 'userId', caption: 'userId', type: 'text' },
            { field: 'userName', caption: 'userName', type: 'text' },
            { field: 'birthdate', caption: 'Birthdate', type: 'date'},
            { field: 'level', caption: 'level', type: 'text' },
            { field: 'joindate', caption: 'joindate', type: 'date' }
        ]/*  ,
       onClick:function(event){
        	w2ui['grid2'].clear();
        	var record = this.get(event.recid);
        	w2ui['grid2'].add([        		
                { recid: 0, name: 'ID:', 		value: record.userId },
                { recid: 1, name: 'password:', value: record.password },
                { recid: 2, name: 'Email:', value: record.email },
                { recid: 3, name: 'userName:', value: record.userName },
                { recid: 4, name: 'Birthdate:', value: record.birthdate },
                { recid: 5, name: 'phone:', value: record.phone },
                { recid: 6, name: 'addr:', value: record.addr },
                { recid: 7, name: 'level:', value: record.level },
                { recid: 8, name: 'joindate:', value: record.joindate },
                { recid: 9, name: 'flag:', value: record.flag }                
        	] ); 
        }	*/
    });    
    
    /* $('#grid2').w2grid({ 
        header: 'Details',
        show: { header: true, columnHeaders: false },
        name: 'grid2', 
        columns: [                
            { field: 'name', caption: 'Name', size: '100px', style: 'background-color: #efefef; border-bottom: 1px solid white; padding-right: 5px;', attr: "align=right" },
            { field: 'value', caption: 'Value', size: '100%' }
        ]
    });  */
});
</script>

</body>
</html>