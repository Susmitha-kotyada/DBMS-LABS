function addTask(){
	let taskInput=document.getElementById('taskinput');
	let taskvalue=taskInput.value;
	if(taskvalue===''){
		alert('please enter a task');
		return;
	}
	let li=document.createElement('li');
	li.innerText=taskvalue;
	let deleteBtn=document.createElement('button');
	deleteBtn.innerText='delete';
	deleteBtn.onclick=function(){
		li.remove();
	};
	let editBtn=document.createElement('button');
	editBtn.innerText='Edit';
	editBtn.onclick=function(){
		let newTask=prompt('Edit task:',li.firstChild.nodeValue);
		if(newTask!==''){
			li.firstChild.nodeValue=newTask;
		}
	};
	li.appendChild(editBtn);
	li.appendChild(deleteBtn);
	document.getElementById('tasklist').appendChild(li);
	taskInput.value='';
}