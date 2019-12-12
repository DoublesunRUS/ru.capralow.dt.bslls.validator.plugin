#Область КвикФиксы

Процедура CanonicalSpellingKeywords() Экспорт
	
	ВОЗВРАТ;
	
КонецПроцедуры

Процедура CommentedCode(А) Экспорт
	
//	МояПроцедура(А);
	А = 2;
//	Если А Тогда
//	КонецЕсли;
	
КонецПроцедуры

Процедура EmptyStatement(А) Экспорт
	
	А = 1; ;
	А = 2;
	
КонецПроцедуры

Процедура OneStatementPerLine(А, Б) Экспорт
	
	А = 1; Б = 2;
	
КонецПроцедуры

Процедура MissingSpace(А) Экспорт
	
	А= 1;
	А =1;
	А=1;
	NumberOfValuesInStructureConstructor(1,2,3,4);
	
КонецПроцедуры

Процедура SemicolonPresence(А) Экспорт

	А = 1

КонецПроцедуры

Процедура SpaceAtStartComment(А) Экспорт
	
	//Комментарий без пробела
	А = 1;
	
КонецПроцедуры

#КонецОбласти

#Область ПрограммныйИнтерфейс

Процедура NonExportMethodsInApiRegion1(А) Экспорт
	
	NonExportMethodsInApiRegion2(А);
	
КонецПроцедуры

Процедура NonExportMethodsInApiRegion2(А)
	
	А = 1;
	
КонецПроцедуры

#КонецОбласти

#Область ТолькоОшибки

&НаСервере
Процедура BeginTransactionBefore_CommitTransactionOutside_TryCatch(А) Экспорт
	
	НачатьТранзакцию();
	ЗафиксироватьТранзакцию();
	ОтменитьТранзакцию();
	
КонецПроцедуры

Процедура CognitiveComplexity(А, В) Экспорт

	// Цикл "Для каждого"
	Для Каждого Б Из А Цикл					// +1
		Б = 1;
	КонецЦикла;

	// Цикл "Для"
	Для Б = 1 По 5 Цикл						// +1
		А = Б;
	КонецЦикла;

	// Цикл "Пока"
	Пока Истина Цикл						// +1
		А = 1;
	КонецЦикла;

	// Условие
	Если А = 1 Тогда						// +1
		А = 2;
		
	// Альтернативная ветвь условия
	ИначеЕсли А <> 1 Тогда					// +1
		А = 3;

	// Ветвь по-умолчанию
	Иначе									// +1
		А = 4;
		
	КонецЕсли;

	// Тернарный оператор
	Б = ?(А = 1, Истина, Ложь);				// +1
	Попытка
		А = 1;
		
	// Обработка исключения
	Исключение								// +1
		А = 2;
		
	КонецПопытки;

	// Переход на метку
	Перейти ~Метка;							// +1

	// Бинарные логические операции
	Пока А = 1 Или А = 0 Цикл				// +2
		А = 2;
	КонецЦикла;

	Если А = 1 И А <> 1 Тогда				// +2
		А = 2;
		
	ИначеЕсли А = 0							// +1
		Или А = 1 И А <> 1 Тогда			// +2
		А = 3;
		
	Иначе
		А = 0;
		
	КонецЕсли;

	А = ?(А = 1 Или А <> 1 Или Не А = 0,	// +3
		Истина, Ложь);

	А = 1 Или 0;							// +1
	А = А <> В;								// +1
	
КонецПроцедуры

Процедура DeletingCollectionItem() Экспорт
	
	А = Новый Массив;
	Для Каждого Б Из А Цикл
		А.Удалить(Б);
	КонецЦикла;
	
КонецПроцедуры

Процедура DeprecatedFind(А, Б, В) Экспорт
	
	В = Найти(А, Б);
	
КонецПроцедуры

Процедура DeprecatedMessage() Экспорт
	
	Сообщить("DeprecatedMessage");
	
КонецПроцедуры

Процедура EmptyCodeBlock() Экспорт
	
	Если Истина Тогда
		
	КонецЕсли;
	
КонецПроцедуры

Процедура ExtraCommas() Экспорт
	
	NumberOfOptionalParams(, , , );
	
КонецПроцедуры

Процедура IdenticalExpressions(А, Б) Экспорт
	
	Если (Б = 1) Или (Б = 1) Тогда
		А = 1;
	КонецЕсли;

	А = (Б = 1) Или (Б = 1);
	Б = А И А;
	
КонецПроцедуры

Процедура IfConditionComplexity(А, Б, В, Г) Экспорт
	
	Если А = 1 Или А = Б Или А = В Или А = Г Тогда
		А = 4;
	КонецЕсли;
	
КонецПроцедуры

Процедура IfElseDuplicatedCodeBlock(А) Экспорт
	
	Если Истина Тогда
		А = 1;
		
	Иначе
		А = 1;
		
	КонецЕсли;
	
КонецПроцедуры

Процедура IfElseDuplicatedCondition(А) Экспорт
	
	Если Истина Тогда
		А = 1;
		
	ИначеЕсли Истина Тогда
		А = 2;
		
	Иначе
		А = 3;
		
	КонецЕсли;
	
КонецПроцедуры

Процедура IfElseIfEndsWithElse(А) Экспорт
	
	Если Истина Тогда
		А = 1;
		
	ИначеЕсли Ложь Тогда
		А = 2;
		
	КонецЕсли;
	
КонецПроцедуры

Процедура InvalidCharacterInFile(А) Экспорт
	
	// –
	// —
	// ‒
	// ―
	//  
	
	А = 1;
	
КонецПроцедуры

Процедура MagicNumber(А) Экспорт
	
	Если А = 365 Тогда
		А = 1;
	КонецЕсли;
	
КонецПроцедуры

Процедура MethodSize(А) Экспорт
	
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	А = 1;
	
КонецПроцедуры

Процедура MissingCodeTryCatchEx(А) Экспорт
	
	Попытка
		А = 1;
		
	Исключение
		// Нечего делать
		
	КонецПопытки;
	
КонецПроцедуры

&НаСервере
Процедура MissingTemporaryFileDeletion() Экспорт
	
	А = Истина;
	Если А Тогда
		ИмяФайла = ПолучитьИмяВременногоФайла("json");
		
	Иначе
		ИмяФайла = "ААА";
		
	КонецЕсли;
	
КонецПроцедуры

Процедура NestedConstructorsInStructureDeclaration(А) Экспорт
	
	А = Новый Структура("ВложеннаяСтруктура", Новый Структура("ВложеннаяСтруктура", Новый Структура));
	
КонецПроцедуры

Процедура NestedStatements(А) Экспорт
	
	Если Истина Тогда
		Если Истина Тогда
			Если Истина Тогда
				Если Истина Тогда
					Если Истина Тогда
						А = 1;
					КонецЕсли;
				КонецЕсли;
			КонецЕсли;
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры

Процедура NestedTernaryOperator(А) Экспорт
	
	А = ?(1 % 1 <> 0, ?( 1 % 1 <> 0, ?(1 % 1 <> 0, 1, "Fizz"), "Buzz"), "FizzBuzz"); 
	
КонецПроцедуры

Процедура NumberOfOptionalParams(А = 1, Б = 2, В = 3, Г = 4) Экспорт
	
	А = 1;
	
КонецПроцедуры

Процедура NumberOfParams(А, Б, В, Г, Д, Е, Ж, З) Экспорт
	
	А = 1;
	
КонецПроцедуры

Процедура NumberOfValuesInStructureConstructor(А, Б, В, Г) Экспорт
	
	А = Новый Структура("1, 2, 3, 4", А, Б, В, Г);
	
КонецПроцедуры

Процедура OrderOfParams(А = 1, Б) Экспорт
	
	А = 1;
	
КонецПроцедуры

&НаСервере
Процедура PairingBrokenTransaction1(А) Экспорт
	
	НачатьТранзакцию();
	Попытка
		А = 1;
		
	Исключение
		А = 1;
		
	КонецПопытки;
	
КонецПроцедуры

&НаСервере
Процедура PairingBrokenTransaction2(А) Экспорт
	
	Попытка
		ЗафиксироватьТранзакцию();
		
	Исключение
		А = 1;
		
	КонецПопытки;
	
КонецПроцедуры

&НаСервере
Процедура PairingBrokenTransaction3(А) Экспорт
	
	НачатьТранзакцию();
	Попытка
		ЗафиксироватьТранзакцию();
		
	Исключение
		А = 1;
		
	КонецПопытки;
	
КонецПроцедуры

Процедура SelfAssign(А) Экспорт
	
	А = А;
	
КонецПроцедуры

Процедура SelfInsertion(А, Б) Экспорт
	
	А.Вставить(А);
	Б.Добавить(Б);
	
КонецПроцедуры

&НаКлиенте
&НаСервере
Процедура SeveralCompilerDirectives(А) Экспорт
	
	А = 1;
	
КонецПроцедуры

&НаСервере
Процедура TimeoutsInExternalResources(А, Б) Экспорт
	
	А = Новый HTTPСоединение("localhost", 80);
	
	Б = Новый FTPСоединение("localhost", 80);
	
КонецПроцедуры

Процедура TryNumber(А) Экспорт
	
	Попытка
		А = Число(1);
	Исключение
		А = 1;
	КонецПопытки;
	
КонецПроцедуры

Процедура UseLessForEach(А, В) Экспорт
	
	Для Каждого Б Из А Цикл
		В = 1;
	КонецЦикла;
	
	В = Б;
	
КонецПроцедуры

Процедура UnaryPlusInConcatenation(А, Б) Экспорт
	
	А = А + + Б;
	
КонецПроцедуры

Процедура UsingCancelParameter(Отказ) Экспорт
	
	Отказ = Ложь;
	
КонецПроцедуры

&НаСервере
Процедура UsingFindElementByString(А) Экспорт
	
	Справочники.МойСправочник.НайтиПоНаименованию("ААА");
	Справочники.МойСправочник.НайтиПоКоду("ААА");
	
КонецПроцедуры

Процедура UsingGoto(А) Экспорт
	
	~Петля:
	
	А = 1;
	
	Перейти ~Петля;
	
КонецПроцедуры

Процедура UsingHardcodePath(А) Экспорт
	
	А = "c:\program files";
	А = "/Library";
	
КонецПроцедуры

Процедура UsingHardcodeSecretInformation(А) Экспорт
	
	А.Вставить("Пароль", "12345");
	А.Вставить("Password", "12345");
	
КонецПроцедуры

Процедура UsingHardcodeNetworkAddress(А) Экспорт
	
	А = "127.0.0.1";
	
КонецПроцедуры

&НаКлиенте
Процедура UsingObjectNotAvailableUnix(А) Экспорт
	
	А = Новый COMОбъект(А);
	А = Новый Почта;
	
КонецПроцедуры

Процедура YoLetterUsage(А, Ё) Экспорт
	
	А = 1;
	
КонецПроцедуры

#КонецОбласти

#Область ЕстьВEDT

Функция FunctionShouldHaveReturn(А) Экспорт
	
	А = 1;
	
КонецФункции

Процедура LineLength(А) Экспорт
	
	А = "1234567890" + "1234567890" + "1234567890" + "1234567890" + "1234567890" + "1234567890" + "1234567890" + "1234567890" + "1234567890";
	
КонецПроцедуры

Процедура ProcedureReturnsValue() Экспорт
	
	Возврат 1;
	
КонецПроцедуры

Процедура UnreachableCode(А) Экспорт
	
	Возврат;
	
	А = 1;
	
КонецПроцедуры

#КонецОбласти
