// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import 'channels';
import Rails from '@rails/ujs';
import { Turbo } from 'turbo-rails';

Rails.start();
Turbo.start();
