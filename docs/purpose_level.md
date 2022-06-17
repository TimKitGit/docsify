Message purpose level

### Общее сообщение (GeneralMessage)
```
{
/// Тип сообщения
    "Type":"string", 
/// уникальный идентификатор сообщения
    "CorrelationId":"string",
/// Время сообщения в формате ISO 8601 "2012-03-21T05:40Z" "TimeStamp":"date",
/// Необязательный параметр может присутствовать только в сообщениях типа Request
/// время жизни сообщения если оно попадает в очередь.
/// формат [d.]h:mm:ss[.fffffff]
/// d - Необязательное число дней
/// h - Количество часов в диапазоне от "0" до "23"
/// mm - Количество минут в диапазоне от "00" до "59"
/// ss -  Количество секунд в диапазоне от "00" до "59"
/// fffffff - Необязательная доля секунды
    "TTL":"Timespan",
/// Необязательный параметр может присутствовать только в сообщениях типа Response
/// Время выполнения запроса "ExecutionDuration":"Timespan",
/// Структура зависит от типа сообщения
    "Payload":"object"
}
```