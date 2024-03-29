﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: проверка создания поступления топлива

Как Оператор я хочу
создать поступление топлива 
чтобы вести учёт.

Контекст:

Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка создания поступления топлива

* Открытие формы создания поступления топлива
	И В командном интерфейсе я выбираю 'Учет топлива(Склад)' 'Поступление топлива'
	Тогда открылось окно 'Поступление топлива'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление топлива (создание)'
	И я нажимаю кнопку выбора у поля с именем "Дата"
	И в поле с именем 'Дата' я ввожу текст '11.08.2022  0:00:00'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'ГСМ/ АД А-289 Краснодар'
* Заполнение наименования топлива
	И в таблице "СписокТоплива" я нажимаю на кнопку с именем 'СписокТопливаДобавить'
	И в таблице "СписокТоплива" я нажимаю кнопку выбора у реквизита с именем "СписокТопливаТопливо"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| 'Код'         | 'Наименование' |
		| '00000000009' | 'Бензин АИ-95' |
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Поступление топлива (создание) *'
* Заполнение единиц измерения топлива и количества топлива
	И в таблице "СписокТоплива" я активизирую поле с именем "СписокТопливаЕдиницаИзмерения"
	И в таблице "СписокТоплива" я нажимаю кнопку выбора у реквизита с именем "СписокТопливаЕдиницаИзмерения"
	И я выбираю из списка 'т'
	И в таблице "СписокТоплива" я активизирую поле с именем "СписокТопливаКоличество"
	И в таблице "СписокТоплива" в поле с именем 'СписокТопливаКоличество' я ввожу текст '100,000'
	И в таблице "СписокТоплива" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Номер" как "Номер"
* Проведение и сохранение
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление топлива (создание) *' в течение 20 секунд
* Проверка сохранения по номеру
	И в таблице "Список" я перехожу к строке:
			| 'Номер'   |
			| '$Номер$' |
