import {genesis} from './genesis'

tag gn-genesis
	<self>
		for item in genesis
			console.log item.paragraphs[0][0].header
		for chapter in genesis
			<h2.h1> "{chapter.book_name_en} | {chapter.book_name_kh}"		
			<h5.h3> "Chapter {chapter.chapter_num_en} | {chapter.chapter_num_kh}"
			<h2.h2> "{chapter.chapter_title}"
			<div.passage>
				for paragraph in chapter.paragraphs
					<p>
						for item in paragraph
							if item.header
								<span> item.header
							if item.verse_text_kh
								<span.verse#{chapter.short_en}-c{chapter.chapter_num_en}-v{item.verse_num_en}> 
									<span.num> "{item.verse_num_en} "
									"{item.verse_text_kh}"
	### css
	gn-genesis {
		.passage p {
			display: block;
			line-height: 2.5rem;
			margin-bottom: 40px;
			& .verse_num_en, & .verse_num_kh {
				margin-right: 5px;
			}
			.verse {
				display: inline;
			}
			.num {
				color: tomato;
			}
		}
		.h1 {
			font-size: 1.4rem;
			text-align: center;
		}
		.h2 {
			font-size: 1rem;
			color: hsla(0,0%,0%,97%);
			text-align: center;
		}
		.h3 {
			color: hsla(0,0%,0%,50%);
		}
	}
	###
tag bible-credit
	<self>
		<h1> "Khmer Standard Version of the Holy Bible in the Khmer Language of Cambodia"
		<p> "Copyright © 1954, 1962 The Bible Society in Cambodia"
		<img src='./BSClogo2.png'>
		<p> 
			"©  រក្សាសិទ្ធិដោយសមាគមព្រះគម្ពីរសកល"
			"គ្រប់ផ្នែកនៃសៀវភៅនេះមិនត្រូវបានផលិត ឬប្រើប្រាស់តាមទំរង់ ឬមធ្យោបាយបែបអេឡិចត្រូនិក ឬម៉ាស៊ីនណាមួយ រួមទាំងការ"
			"ថតចំលងអាត់សំលេង ផ្ទុកនូវទិន្នន័យ ប្រព័ន្ធណាមួយដែលអាចយកមកប្រើ ដោយគ្មានការអនុញ្ញាតពីសមាគមព្រះគម្ពីរកម្ពុជា។"
			"ប្រសិនបើមានការដកស្រង់អត្ថបទគម្ពីរចាប់ពី ១០០០ខ ឡើងទៅ ត្រូវសុំការអនុញ្ញាតពីសមាគមព្រះគម្ពីរកម្ពុជ"
		<p>
			"Quotations of the Bible in Khmer Standard Version in any form, must obtain written"
			"permission from the Bible Society in Cambodia if the quoted material is inclusive of  at least"
			"1,000 verses, or a copy of any book wholly or partially, which amounts to 50% of the book"
			"quoted. For any long quotation, notice of copyright must appear as follows:"
			"Text copyright © 1954, 1962 United Bible Societies. Used by permission."							
	### css

	###
tag app-root
	<self>
		<gn-genesis>
		<bible-credit>
