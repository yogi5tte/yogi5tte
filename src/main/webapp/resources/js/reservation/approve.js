'use strict'

function PDFConvertHandler(event){
	const convertPDF = document.querySelector('.reservation_approve_info')
	const btn_set = document.querySelector('.btn_set')
	btn_set.style.display= 'none';
	html2canvas(convertPDF)
	.then(function(canvas){
			let doc = new jsPDF('p','mm','a4');
			let imgData = canvas.toDataURL('image/png');
			doc.addImage(imgData,'PNG',0,0);
			doc.save('sample_file.pdf');
		})
	btn_set.style.display='flex';

	
	
	/*
	 * html2canvas(document.body,{
		onrendered: function(canvas){
			//캔버스를 이미지로 변환
			let imgData = canvas.toDataURL('image/png');
			let imgWidth = 210;
			let pageHeight = imgWidth * 1.414;
			let imgHeight = canvas.height* imgWidth/ canvas.width;
			let heightLeft = imgHeight;
			
			let doc = new jsPDF('p','mm')
			let position = 0;
			
			//첫 페이지 출력
			doc.addImage(imgData,'PNG',0,position,imgWidth,imgHeight);
			heightLeft -= pageHeight;
			
			//한 페이지 이상일 경우 루프를 돌면서 출력
			while(heightLeft >= 20){
				position = heightLeft - imgHeight;
				doc.addPage();
				doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
				heightLeft -= pageHeight;
			}
			//파일 저장
			doc.save('sample.pdf');
		}
	});
	*/
}