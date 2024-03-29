﻿#language: ru
@tree
@ExportScenarios

Функционал: Загрузка данных для экспорта в заявку на технику (второй вариант)

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка данных

	// Документ.ТСМ_ЗаявкаНаТехникуВнутренняя

	И я проверяю или создаю для документа "ТСМ_ЗаявкаНаТехникуВнутренняя" объекты:
		| 'Ссылка'                                                                                 | 'ПометкаУдаления' | 'Номер'     | 'Дата'               | 'Проведен' | 'Территория'                                                                | 'ДатаПредоставления' | 'Смена'                                               | 'Участок'                                                                      | 'НачальникУчастка'                                                              | 'Диспетчер' | 'Ответственный'                                                           | 'Комментарий' |
		| 'e1cib/data/Документ.ТСМ_ЗаявкаНаТехникуВнутренняя?ref=8cd19abe9448a95911ed2378369abf7b' | 'False'           | '000000001' | '24.08.2022 9:44:39' | 'True'     | 'e1cib/data/Справочник.ТСМ_Территории?ref=a16c00224dda35d011ec64f6e1fa4a56' | '24.08.2022 0:00:00' | 'e1cib/data/Справочник.ТСМ_Смены?refName=Дневная7_19' | 'e1cib/data/Справочник.ТСМ_Подразделения?ref=945942f2e9dcc78911eb3b1083ccd168' | 'e1cib/data/Справочник.ТСМ_ФизическиеЛица?ref=944e42f2e9dcc78911ea09d9bcd6eb56' | ''          | 'e1cib/data/Справочник.Пользователи?ref=a16d00224dda35d011ed17b7db9cd0dd' | ''            |

	И я перезаполняю для объекта табличную часть "СписокПредметов":
		| 'Ссылка'                                                                                 | 'ВидТехники'                                                                 | 'ТребованиеКТехнике'                                                                 | 'Маршрут'                                                                        | 'МестоПогрузки'                                                                   | 'МестоРазгрузки'                                                                  | 'ВидРабот'                                                                 | 'ЕдиницаИзмерения'                                                                        | 'ПредметКоличество' | 'Ответственный'                                                                 | 'НомерТелефонаОтветственного' | 'ЗаказанноеЧислоСамосвалов' | 'РасчетноеЧислоСамосвалов' | 'Примечание' | 'ИдентификаторНазначения'              |
		| 'e1cib/data/Документ.ТСМ_ЗаявкаНаТехникуВнутренняя?ref=8cd19abe9448a95911ed2378369abf7b' | 'e1cib/data/Справочник.ТСМ_ВидыКлассов?ref=940942f2e9dcc78911e4d2f50a7c9e74' | 'e1cib/data/Справочник.ЗначенияСвойствОбъектов?ref=a16c00224dda35d011ecd1c2606e0121' | 'e1cib/data/Справочник.ТСМ_МаршрутыТехники?ref=a16c00224dda35d011eca5e734a5a4ec' | 'e1cib/data/Справочник.ТСМ_ПунктыНазначения?ref=a16c00224dda35d011eca5e6336a52da' | 'e1cib/data/Справочник.ТСМ_ПунктыНазначения?ref=a16c00224dda35d011eca5e391e19f32' | 'e1cib/data/Справочник.ТСМ_ВидыРабот?ref=a16c00224dda35d011ec6da6668ed028' | 'e1cib/data/Справочник.КлассификаторЕдиницИзмерения?ref=a16c00224dda35d011ec5bf68f15d458' | 1500                | 'e1cib/data/Справочник.ТСМ_ФизическиеЛица?ref=93ed6eae8b1d6a5111e257f999e3bf26' | '+79123456789'                | 5                           | 5                          | ''           | 'dcdb0a1d-fab9-4b4e-bc6e-bdc03b353979' |

