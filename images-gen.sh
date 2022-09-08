#!/usr/bin/env bash

java -jar ./tools/res_generator.jar type=icon icon_folder_path=./assets/images icon_code_file_path=./lib/res/images.dart class_name=DImages icon_path_prefix=assets/images/ icon_file_name_prefix=img_ standardize_file_name=true
