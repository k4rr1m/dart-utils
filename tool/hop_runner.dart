#!/usr/bin/env dart
/**
 * Copyright (C) 2014  Andrea Cantafio kk4r.1m@gmail.com
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
library hop_runner;

import '../lib/task.dart';
import 'dart:io';
import 'package:hop/hop.dart';
import 'package:hop_docgen/hop_docgen.dart';
import 'package:hop/hop_tasks.dart';
import 'package:path/path.dart' as path;



void main (List<String> args) {
  addTask(CMD_INSTALL, installTask());
  addTask('add-header', addHeaderTask());
  runHop(args);
}