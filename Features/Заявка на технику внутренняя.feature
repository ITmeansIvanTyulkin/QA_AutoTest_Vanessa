﻿#language: ru

@tree

Функционал: Заявка на технику внутренняя

Как менеджер я хочу
формировать автоматически заявки на технику
чтобы быстрее достигать результата.

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Заявка на технику внутренняя
// Полный цикл создания заявки на технику. Внутренняя заявка.
И я закрываю все окна клиентского приложения
* Подготовка заявки
// Выбор раздела и создание заявки.
	И В командном интерфейсе я выбираю 'Служба логистики' 'Заявка на технику(внутренняя)'
	Когда открылось окно 'Заявка на технику(внутренняя)'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение шапки полей формы документа
// Необходимо заполнить основные реквизиты в шапке.
		Тогда открылось окно 'Заявка на технику(внутренняя)*'
	И я нажимаю кнопку выбора у поля с именем "Территория"
	Тогда открылось окно 'Территории'
	И в таблице "СписокНапавленийДеятельности" я перехожу к строке:
		| 'Наименование' |
		| '_БАЛАБАНОВО'  |
	И в таблице  "СписокНапавленийДеятельности" я перехожу на один уровень вниз
	И в таблице "СписокНапавленийДеятельности" я выбираю текущую строку
	И в таблице "СписокТерриторий" я перехожу к строке:
		| 'Архив' | 'Код' | 'Наименование'                         |
		| 'Нет'   | '000' | 'Жилая база \ БАЛАБАНОВО (Балабаново)' |
	И в таблице "СписокТерриторий" я выбираю текущую строку
	Тогда открылось окно 'Заявка на технику(внутренняя)*'
	И я нажимаю кнопку выбора у поля с именем "ДатаПредоставления"
	И в поле с именем 'ДатаПредоставления' я ввожу текст '23.08.2022'
	И я нажимаю кнопку выбора у поля с именем "Участок"
	Тогда открылось окно 'Подразделения организации'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'                          |
		| '000009535' | 'ERP СКОПИРОВАННЫЕ ПОДРАЗДЕЛЕНИЯ НОВЫЕ' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заявка на технику(внутренняя)*'
	И я нажимаю кнопку выбора у поля с именем "НачальникУчастка"
	Тогда открылось окно 'Физические лица'
	И в таблице "Список" я перехожу к строке:
		| 'Должность'                                  | 'Контрагент'                            | 'Наименование'           | 'Подразделение'              | 'Табельный номер' |
		| 'Водитель автомобиля (легкового) ( 4 разр.)' | 'Трансстроймеханизация[ИНН 7715568411]' | 'Абаев Андрей Сергеевич' | 'ERP Управление механизации' | '0000029987'      |
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заявка на технику(внутренняя)*'
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заявка на технику(внутренняя)*'
* Заполнение заявки
	Когда открылось окно 'Заявка на технику(внутренняя)*'
	И в таблице "СписокПредметов" я нажимаю на кнопку с именем 'СписокПредметовДобавить'
	И в таблице "СписокПредметов" из выпадающего списка с именем "СписокПредметовВидТехники" я выбираю по строке 'Автоса'
	И в таблице "СписокПредметов" я активизирую поле с именем "СписокПредметовТребованиеКТехнике"
	И в таблице "СписокПредметов" из выпадающего списка с именем "СписокПредметовТребованиеКТехнике" я выбираю точное значение 'Шоссейный'
	И я перехожу к следующему реквизиту
	И в таблице "СписокПредметов" из выпадающего списка с именем "СписокПредметовМаршрут" я выбираю по строке 'ПК'
	И в таблице "СписокПредметов" я завершаю редактирование строки
	И в таблице "СписокПредметов" я активизирую поле с именем "СписокПредметовВидРабот"
	И в таблице "СписокПредметов" я выбираю текущую строку
	И в таблице "СписокПредметов" из выпадающего списка с именем "СписокПредметовВидРабот" я выбираю по строке 'Погрузка, '
	И в таблице "СписокПредметов" я завершаю редактирование строки
	И в таблице "СписокПредметов" я активизирую поле с именем "СписокПредметовПредметКоличество"
	И в таблице "СписокПредметов" я выбираю текущую строку
	И в таблице "СписокПредметов" в поле с именем 'СписокПредметовПредметКоличество' я ввожу текст '1 500,000'
	И в таблице "СписокПредметов" я активизирую поле с именем "СписокПредметовЕдиницаИзмерения"
	И в таблице "СписокПредметов" из выпадающего списка с именем "СписокПредметовЕдиницаИзмерения" я выбираю точное значение 'м3'
	И в таблице "СписокПредметов" я завершаю редактирование строки
	И в таблице "СписокПредметов" я активизирую поле с именем "СписокПредметовОтветственный"
	И в таблице "СписокПредметов" я выбираю текущую строку
	И в таблице "СписокПредметов" из выпадающего списка с именем "СписокПредметовОтветственный" я выбираю по строке 'Гапош'
	И в таблице "СписокПредметов" я завершаю редактирование строки
	И в таблице "СписокПредметов" я активизирую поле с именем "СписокПредметовНомерТелефонаОтветственного"
	И в таблице "СписокПредметов" я выбираю текущую строку
	И в таблице "СписокПредметов" в поле с именем 'СписокПредметовНомерТелефонаОтветственного' я ввожу текст '+79123456789'
	И в таблице "СписокПредметов" я завершаю редактирование строки
* Проведение заявки
	* Проведение заявки
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я запоминаю значение поля "Номер" как "ИмяПеременной"
	И я жду закрытия окна 'Заявка на технику(внутренняя) (создание)' в течение 10 секунд
* Проверка созданной заявки по номеру
	И В командном интерфейсе я выбираю 'Служба логистики' 'Заявка на технику(внутренняя)'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'   |
		| '$ИмяПеременной$' |
* Закрытие окон теста
И я закрываю все окна клиентского приложения