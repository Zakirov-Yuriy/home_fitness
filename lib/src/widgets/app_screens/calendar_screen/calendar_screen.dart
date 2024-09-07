// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class CalendarScreen extends StatefulWidget {
//   const CalendarScreen({super.key});

//   @override
//   CalendarScreenState createState() => CalendarScreenState();
// }

// class CalendarScreenState extends State<CalendarScreen> {
//   // late SharedPreferences _prefs;
//   List<DateTime> _visitedDays = [];

//   @override
//   void initState() {
//     super.initState();
//     // _initPrefs();
//   }

//   // Future<void> _initPrefs() async {
//   //   _prefs = await SharedPreferences.getInstance();
//   //   // Загрузка информации о посещенных днях из хранилища
//   //   final List<String>? visitedDaysStr = _prefs.getStringList('visited_days');
//   //   if (visitedDaysStr != null) {
//   //     _visitedDays =
//   //         visitedDaysStr.map((dayStr) => DateTime.parse(dayStr)).toList();
//   //   }
//   // }

//   // Future<void> saveVisitedDay(DateTime day) async {
//   //   _visitedDays.add(day);
//   //   await _prefs.setStringList(
//   //     'visited_days',
//   //     _visitedDays.map((day) => day.toIso8601String()).toList(),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           // title: const Text('Календарь'),
//           ),
//       body: Center(
//         child: TableCalendar(
//           firstDay: DateTime.utc(2022, 1, 1),
//           lastDay: DateTime.now(),
//           focusedDay: DateTime.now(), // Установите focusedDay на текущую дату
//           calendarFormat: CalendarFormat.month,
//           // headerStyle: const HeaderStyle(
//           //     decoration: BoxDecoration(
//           //       color: const Color.fromRGBO(255, 51, 119, 1),
//           //     ),
//           //     titleTextStyle: TextStyle(color: Colors.amber)),
//           onDaySelected: (selectedDay, focusedDay) {
//             setState(() {
//               // Добавьте логику обработки выбранного дня
//             });
//           },
//           selectedDayPredicate: (day) {
//             // Добавьте логику для подсветки дней, в которые пользователь заходил в приложение
//             return _visitedDays.contains(day);
//           },
//         ),
//       ),
//     );
//   }
// }
