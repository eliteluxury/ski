# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

alice = User.create(:name => 'Alice', :email => 'alice@myskichalet.co.uk', :password => 'secret') { |u| u.admin = true }
bob = User.create(:name => 'Bob', :email => 'bob@myskichalet.co.uk', :password => 'secret')

countries = Country.create([
  { :name => 'Andorra',               :iso_3166_1_alpha_2 => 'AD' },
  { :name => 'Afghanistan',           :iso_3166_1_alpha_2 => 'AF' },
  { :name => 'Albania',               :iso_3166_1_alpha_2 => 'AL' },
  { :name => 'Algeria',               :iso_3166_1_alpha_2 => 'DZ' },
  { :name => 'Angola',                :iso_3166_1_alpha_2 => 'AO' },
  { :name => 'Anguilla',              :iso_3166_1_alpha_2 => 'AI' },
  { :name => 'Antarctica',            :iso_3166_1_alpha_2 => 'AQ' },
  { :name => 'Antigua and Barbuda',   :iso_3166_1_alpha_2 => 'AG' },
  { :name => 'Argentina',             :iso_3166_1_alpha_2 => 'AR' },
  { :name => 'American Samoa',        :iso_3166_1_alpha_2 => 'AS' },
  { :name => 'Åland Islands',         :iso_3166_1_alpha_2 => 'AX' },
  { :name => 'Armenia',               :iso_3166_1_alpha_2 => 'AM' },
  { :name => 'Aruba',                 :iso_3166_1_alpha_2 => 'AW' },
  { :name => 'Austria',               :iso_3166_1_alpha_2 => 'AU', :valid_for_resorts => true },
  { :name => 'Azerbaijan',            :iso_3166_1_alpha_2 => 'AZ' },
  { :name => 'Bahamas',               :iso_3166_1_alpha_2 => 'BS' },
  { :name => 'Bahrain',               :iso_3166_1_alpha_2 => 'BH' },
  { :name => 'Bangladesh',            :iso_3166_1_alpha_2 => 'BD' },
  { :name => 'Barbados',              :iso_3166_1_alpha_2 => 'BB' },
  { :name => 'Belarus',               :iso_3166_1_alpha_2 => 'BY' },
  { :name => 'Belgium',               :iso_3166_1_alpha_2 => 'BE' },
  { :name => 'Belize',                :iso_3166_1_alpha_2 => 'BZ' },
  { :name => 'Benin',                 :iso_3166_1_alpha_2 => 'BJ' },
  { :name => 'Bermuda',               :iso_3166_1_alpha_2 => 'BM' },
  { :name => 'Bhutan',                :iso_3166_1_alpha_2 => 'BT' },
  { :name => 'Bolivia',               :iso_3166_1_alpha_2 => 'BO' },
  { :name => 'Bosnia and Herzegovina', :iso_3166_1_alpha_2 => 'BA' },
  { :name => 'Botswana',              :iso_3166_1_alpha_2 => 'BW' },
  { :name => 'Bouvet Island',         :iso_3166_1_alpha_2 => 'BV' },
  { :name => 'Brazil',                :iso_3166_1_alpha_2 => 'BR' },
  { :name => 'British Indian Ocean Territory', :iso_3166_1_alpha_2 => 'IO' },
  { :name => 'Brunei',                :iso_3166_1_alpha_2 => 'BN' },
  { :name => 'Bulgaria',              :iso_3166_1_alpha_2 => 'BG' },
  { :name => 'Burkina Faso',          :iso_3166_1_alpha_2 => 'BF' },
  { :name => 'Burundi',               :iso_3166_1_alpha_2 => 'BI' },
  { :name => 'Cameroon',              :iso_3166_1_alpha_2 => 'CM' },
  { :name => 'Canada',                :iso_3166_1_alpha_2 => 'CA' },
  { :name => 'Cambodia',              :iso_3166_1_alpha_2 => 'KH' },
  { :name => 'Cape Verde',            :iso_3166_1_alpha_2 => 'CV' },
  { :name => 'Cayman Islands',        :iso_3166_1_alpha_2 => 'KY' },
  { :name => 'Central African Republic', :iso_3166_1_alpha_2 => 'CF' },
  { :name => 'Chad',                  :iso_3166_1_alpha_2 => 'TD' },
  { :name => 'Chile',                 :iso_3166_1_alpha_2 => 'CL' },
  { :name => 'China',                 :iso_3166_1_alpha_2 => 'CN' },
  { :name => 'Christmas Island',      :iso_3166_1_alpha_2 => 'CX' },
  { :name => 'Cocos (Keeling) Islands', :iso_3166_1_alpha_2 => 'CC' },
  { :name => 'Colombia',              :iso_3166_1_alpha_2 => 'CO' },
  { :name => 'Congo',                 :iso_3166_1_alpha_2 => 'CG' },
  { :name => 'Congo, the Democratic Republic of', :iso_3166_1_alpha_2 => 'CD' },
  { :name => 'Comoros',               :iso_3166_1_alpha_2 => 'KM' },
  { :name => 'Cook Islands',          :iso_3166_1_alpha_2 => 'CK' },
  { :name => 'Costa Rica',            :iso_3166_1_alpha_2 => 'CR' },
  { :name => 'Côte d\'Ivoire',        :iso_3166_1_alpha_2 => 'CI' },
  { :name => 'Croatia',               :iso_3166_1_alpha_2 => 'HR' },
  { :name => 'Cuba',                  :iso_3166_1_alpha_2 => 'CU' },
  { :name => 'Cyprus',                :iso_3166_1_alpha_2 => 'CY' },
  { :name => 'Czech Republic',        :iso_3166_1_alpha_2 => 'CZ' },
  { :name => 'Denmark',               :iso_3166_1_alpha_2 => 'DK' },
  { :name => 'Djibouti',              :iso_3166_1_alpha_2 => 'DJ' },
  { :name => 'Dominica',              :iso_3166_1_alpha_2 => 'DM' },
  { :name => 'Dominican Republic',    :iso_3166_1_alpha_2 => 'DO' },
  { :name => 'Ecuador',               :iso_3166_1_alpha_2 => 'EC' },
  { :name => 'Egypt',                 :iso_3166_1_alpha_2 => 'EG' },
  { :name => 'El Salvador',           :iso_3166_1_alpha_2 => 'SV' },
  { :name => 'Equatorial Guinea',     :iso_3166_1_alpha_2 => 'GQ' },
  { :name => 'Estonia',               :iso_3166_1_alpha_2 => 'EE' },
  { :name => 'Eritrea',               :iso_3166_1_alpha_2 => 'ER' },
  { :name => 'Ethiopia',              :iso_3166_1_alpha_2 => 'ET' },
  { :name => 'Falkland Islands (Malvinas)', :iso_3166_1_alpha_2 => 'FK' },
  { :name => 'Faroe Islands',         :iso_3166_1_alpha_2 => 'FO' },
  { :name => 'Fiji',                  :iso_3166_1_alpha_2 => 'FJ' },
  { :name => 'Finland',               :iso_3166_1_alpha_2 => 'FI' },
  { :name => 'France',                :iso_3166_1_alpha_2 => 'FR', :valid_for_resorts => true },
  { :name => 'French Guiana',         :iso_3166_1_alpha_2 => 'GF' },
  { :name => 'French Polynesia',      :iso_3166_1_alpha_2 => 'PF' },
  { :name => 'French Southern Territories', :iso_3166_1_alpha_2 => 'TF' },
  { :name => 'Gabon',                 :iso_3166_1_alpha_2 => 'GA' },
  { :name => 'Gambia',                :iso_3166_1_alpha_2 => 'GM' },
  { :name => 'Georgia',               :iso_3166_1_alpha_2 => 'GE' },
  { :name => 'Germany',               :iso_3166_1_alpha_2 => 'DE' },
  { :name => 'Ghana',                 :iso_3166_1_alpha_2 => 'GH' },
  { :name => 'Gibraltar',             :iso_3166_1_alpha_2 => 'GI' },
  { :name => 'Greece',                :iso_3166_1_alpha_2 => 'GR' },
  { :name => 'Greenland',             :iso_3166_1_alpha_2 => 'GL' },
  { :name => 'Grenada',               :iso_3166_1_alpha_2 => 'GD' },
  { :name => 'Guadeloupe',            :iso_3166_1_alpha_2 => 'GP' },
  { :name => 'Guam',                  :iso_3166_1_alpha_2 => 'GU' },
  { :name => 'Guatemala',             :iso_3166_1_alpha_2 => 'GT' },
  { :name => 'Guernsey',              :iso_3166_1_alpha_2 => 'GG' },
  { :name => 'Guinea',                :iso_3166_1_alpha_2 => 'GN' },
  { :name => 'Guinea-Bissau',         :iso_3166_1_alpha_2 => 'GW' },
  { :name => 'Guyana',                :iso_3166_1_alpha_2 => 'GY' },
  { :name => 'Haiti',                 :iso_3166_1_alpha_2 => 'HT' },
  { :name => 'Heard Island and McDonald Islands', :iso_3166_1_alpha_2 => 'HM' },
  { :name => 'Holy See (Vatican City State)', :iso_3166_1_alpha_2 => 'VA' },
  { :name => 'Honduras',              :iso_3166_1_alpha_2 => 'HN' },
  { :name => 'Hong Kong',             :iso_3166_1_alpha_2 => 'HK' },
  { :name => 'Hungary',               :iso_3166_1_alpha_2 => 'HU' },
  { :name => 'Iceland',               :iso_3166_1_alpha_2 => 'IS' },
  { :name => 'India',                 :iso_3166_1_alpha_2 => 'IN' },
  { :name => 'Indonesia',             :iso_3166_1_alpha_2 => 'ID' },
  { :name => 'Iran',                  :iso_3166_1_alpha_2 => 'IR' },
  { :name => 'Iraq',                  :iso_3166_1_alpha_2 => 'IQ' },
  { :name => 'Ireland',               :iso_3166_1_alpha_2 => 'IE' },
  { :name => 'Isle of Man',           :iso_3166_1_alpha_2 => 'IM' },
  { :name => 'Israel',                :iso_3166_1_alpha_2 => 'IS' },
  { :name => 'Italy',                 :iso_3166_1_alpha_2 => 'IT', :valid_for_resorts => true },
  { :name => 'Jamaica',               :iso_3166_1_alpha_2 => 'JM' },
  { :name => 'Japan',                 :iso_3166_1_alpha_2 => 'JP' },
  { :name => 'Jersey',                :iso_3166_1_alpha_2 => 'JE' },
  { :name => 'Jordan',                :iso_3166_1_alpha_2 => 'JO' },
  { :name => 'Kazakhstan',            :iso_3166_1_alpha_2 => 'KZ' },
  { :name => 'Kenya',                 :iso_3166_1_alpha_2 => 'KE' },
  { :name => 'Kiribati',              :iso_3166_1_alpha_2 => 'KI' },
  { :name => 'Kuwait',                :iso_3166_1_alpha_2 => 'KW' },
  { :name => 'Kyrgyzstan',            :iso_3166_1_alpha_2 => 'KG' },
  { :name => 'Lao People\'s Democratic Republic', :iso_3166_1_alpha_2 => 'LA' },
  { :name => 'Latvia',                :iso_3166_1_alpha_2 => 'LV' },
  { :name => 'Lebanon',               :iso_3166_1_alpha_2 => 'LB' },
  { :name => 'Lesotho',               :iso_3166_1_alpha_2 => 'LS' },
  { :name => 'Liberia',               :iso_3166_1_alpha_2 => 'LR' },
  { :name => 'Liechtenstein',         :iso_3166_1_alpha_2 => 'LI' },
  { :name => 'Lithuania',             :iso_3166_1_alpha_2 => 'LT' },
  { :name => 'Luxembourg',            :iso_3166_1_alpha_2 => 'LU' },
  { :name => 'Libya',                 :iso_3166_1_alpha_2 => 'LY' },
  { :name => 'Macao',                 :iso_3166_1_alpha_2 => 'MO' },
  { :name => 'Macedonia, the former Yugoslav Republic of', :iso_3166_1_alpha_2 => 'MK' },
  { :name => 'Madagascar',            :iso_3166_1_alpha_2 => 'MG' },
  { :name => 'Malawi',                :iso_3166_1_alpha_2 => 'MW' },
  { :name => 'Malaysia',              :iso_3166_1_alpha_2 => 'MY' },
  { :name => 'Maldives',              :iso_3166_1_alpha_2 => 'MV' },
  { :name => 'Mali',                  :iso_3166_1_alpha_2 => 'ML' },
  { :name => 'Malta',                 :iso_3166_1_alpha_2 => 'MT' },
  { :name => 'Marshall Islands',      :iso_3166_1_alpha_2 => 'MH' },
  { :name => 'Martinique',            :iso_3166_1_alpha_2 => 'MQ' },
  { :name => 'Mauritania',            :iso_3166_1_alpha_2 => 'MR' },
  { :name => 'Mauritius',             :iso_3166_1_alpha_2 => 'MU' },
  { :name => 'Mayotte',               :iso_3166_1_alpha_2 => 'YT' },
  { :name => 'Mexico',                :iso_3166_1_alpha_2 => 'MX' },
  { :name => 'Micronesia, Federated States of', :iso_3166_1_alpha_2 => 'FM' },
  { :name => 'Moldova',               :iso_3166_1_alpha_2 => 'MD' },
  { :name => 'Monaco',                :iso_3166_1_alpha_2 => 'MC' },
  { :name => 'Mongolia',              :iso_3166_1_alpha_2 => 'MN' },
  { :name => 'Montenegro',            :iso_3166_1_alpha_2 => 'ME' },
  { :name => 'Montserrat',            :iso_3166_1_alpha_2 => 'MS' },
  { :name => 'Morocco',               :iso_3166_1_alpha_2 => 'MA' },
  { :name => 'Mozambique',            :iso_3166_1_alpha_2 => 'MZ' },
  { :name => 'Myanmar',               :iso_3166_1_alpha_2 => 'MM' },
  { :name => 'Namibia',               :iso_3166_1_alpha_2 => 'NA' },
  { :name => 'Nauru',                 :iso_3166_1_alpha_2 => 'NR' },
  { :name => 'Nepal',                 :iso_3166_1_alpha_2 => 'NP' },
  { :name => 'Netherlands',           :iso_3166_1_alpha_2 => 'NL' },
  { :name => 'New Caledonia',         :iso_3166_1_alpha_2 => 'NC' },
  { :name => 'New Zealand',           :iso_3166_1_alpha_2 => 'NZ' },
  { :name => 'Nicaragua',             :iso_3166_1_alpha_2 => 'NI' },
  { :name => 'Niger',                 :iso_3166_1_alpha_2 => 'NE' },
  { :name => 'Nigeria',               :iso_3166_1_alpha_2 => 'NG' },
  { :name => 'Niue',                  :iso_3166_1_alpha_2 => 'NU' },
  { :name => 'Norfolk Island',        :iso_3166_1_alpha_2 => 'NF' },
  { :name => 'North Korea',           :iso_3166_1_alpha_2 => 'KP' },
  { :name => 'Northern Mariana Islands', :iso_3166_1_alpha_2 => 'MP' },
  { :name => 'Norway',                :iso_3166_1_alpha_2 => 'NO' },
  { :name => 'Oman',                  :iso_3166_1_alpha_2 => 'OM' },
  { :name => 'Pakistan',              :iso_3166_1_alpha_2 => 'PK' },
  { :name => 'Palau',                 :iso_3166_1_alpha_2 => 'PW' },
  { :name => 'Palestinian Territory, Occupied', :iso_3166_1_alpha_2 => 'PS' },
  { :name => 'Panama',                :iso_3166_1_alpha_2 => 'PA' },
  { :name => 'Papua New Guinea',      :iso_3166_1_alpha_2 => 'PG' },
  { :name => 'Paraguay',              :iso_3166_1_alpha_2 => 'PY' },
  { :name => 'Peru',                  :iso_3166_1_alpha_2 => 'PE' },
  { :name => 'Philippines',           :iso_3166_1_alpha_2 => 'PH' },
  { :name => 'Pitcairn',              :iso_3166_1_alpha_2 => 'PN' },
  { :name => 'Poland',                :iso_3166_1_alpha_2 => 'PL' },
  { :name => 'Portugal',              :iso_3166_1_alpha_2 => 'PT' },
  { :name => 'Puerto Rico',           :iso_3166_1_alpha_2 => 'PR' },
  { :name => 'Qatar',                 :iso_3166_1_alpha_2 => 'QA' },
  { :name => 'Réunion',               :iso_3166_1_alpha_2 => 'RE' },
  { :name => 'Romania',               :iso_3166_1_alpha_2 => 'RO' },
  { :name => 'Russia',                :iso_3166_1_alpha_2 => 'RU' },
  { :name => 'Rwanda',                :iso_3166_1_alpha_2 => 'RW' },
  { :name => 'Saint Barthélemy',      :iso_3166_1_alpha_2 => 'BL' },
  { :name => 'Saint Helena, Ascension and Tristan da Cunha', :iso_3166_1_alpha_2 => 'SH' },
  { :name => 'Saint Kitts and Nevis', :iso_3166_1_alpha_2 => 'KN' },
  { :name => 'Saint Lucia',           :iso_3166_1_alpha_2 => 'LC' },
  { :name => 'Saint Martin (French part)', :iso_3166_1_alpha_2 => 'MF' },
  { :name => 'Saint Pierre and Miquelon', :iso_3166_1_alpha_2 => 'PM' },
  { :name => 'Saint Vincent and the Grenadines', :iso_3166_1_alpha_2 => 'VC' },
  { :name => 'Samoa',                 :iso_3166_1_alpha_2 => 'WS' },
  { :name => 'San Marino',            :iso_3166_1_alpha_2 => 'SM' },
  { :name => 'Sao Tome and Principe', :iso_3166_1_alpha_2 => 'ST' },
  { :name => 'Saudi Arabia',          :iso_3166_1_alpha_2 => 'SA' },
  { :name => 'Senegal',               :iso_3166_1_alpha_2 => 'SN' },
  { :name => 'Serbia',                :iso_3166_1_alpha_2 => 'RS' },
  { :name => 'Seychelles',            :iso_3166_1_alpha_2 => 'SC' },
  { :name => 'Sierra Leone',          :iso_3166_1_alpha_2 => 'SL' },
  { :name => 'Singapore',             :iso_3166_1_alpha_2 => 'SG' },
  { :name => 'Slovakia',              :iso_3166_1_alpha_2 => 'SK' },
  { :name => 'Slovenia',              :iso_3166_1_alpha_2 => 'SI' },
  { :name => 'Solomon Islands',       :iso_3166_1_alpha_2 => 'SB' },
  { :name => 'Somalia',               :iso_3166_1_alpha_2 => 'SO' },
  { :name => 'South Africa',          :iso_3166_1_alpha_2 => 'ZA' },
  { :name => 'South Georgia and the South Sandwich Islands', :iso_3166_1_alpha_2 => 'GS' },
  { :name => 'South Korea',           :iso_3166_1_alpha_2 => 'KR' },
  { :name => 'Spain',                 :iso_3166_1_alpha_2 => 'ES' },
  { :name => 'Sri Lanka',             :iso_3166_1_alpha_2 => 'LK' },
  { :name => 'Sudan',                 :iso_3166_1_alpha_2 => 'SD' },
  { :name => 'Suriname',              :iso_3166_1_alpha_2 => 'SR' },
  { :name => 'Svalbard and Jan Mayen', :iso_3166_1_alpha_2 => 'SJ' },
  { :name => 'Swaziland',             :iso_3166_1_alpha_2 => 'SZ' },
  { :name => 'Sweden',                :iso_3166_1_alpha_2 => 'SE' },
  { :name => 'Switzerland',           :iso_3166_1_alpha_2 => 'CH', :valid_for_resorts => true },
  { :name => 'Syria',                 :iso_3166_1_alpha_2 => 'SY' },
  { :name => 'Taiwan, Province of China', :iso_3166_1_alpha_2 => 'TW' },
  { :name => 'Tajikistan',            :iso_3166_1_alpha_2 => 'TJ' },
  { :name => 'Tanzania',              :iso_3166_1_alpha_2 => 'TZ' },
  { :name => 'Thailand',              :iso_3166_1_alpha_2 => 'TH' },
  { :name => 'Timor-Lest',            :iso_3166_1_alpha_2 => 'TL' },
  { :name => 'Togo',                  :iso_3166_1_alpha_2 => 'TG' },
  { :name => 'Tokelau',               :iso_3166_1_alpha_2 => 'TK' },
  { :name => 'Tonga',                 :iso_3166_1_alpha_2 => 'TO' },
  { :name => 'Trinidad and Tobago',   :iso_3166_1_alpha_2 => 'TT' },
  { :name => 'Tunisia',               :iso_3166_1_alpha_2 => 'TN' },
  { :name => 'Turkey',                :iso_3166_1_alpha_2 => 'TR' },
  { :name => 'Turkmenistan',          :iso_3166_1_alpha_2 => 'TM' },
  { :name => 'Turks and Caicos Islands', :iso_3166_1_alpha_2 => 'TC' },
  { :name => 'Tuvalu',                :iso_3166_1_alpha_2 => 'TV' },
  { :name => 'Uganda',                :iso_3166_1_alpha_2 => 'UG' },
  { :name => 'Ukraine',               :iso_3166_1_alpha_2 => 'UA' },
  { :name => 'United Arab Emirates',  :iso_3166_1_alpha_2 => 'AE' },
  { :name => 'United Kingdom',        :iso_3166_1_alpha_2 => 'GB' },
  { :name => 'United States',         :iso_3166_1_alpha_2 => 'US' },
  { :name => 'United States Minor Outlying Islands', :iso_3166_1_alpha_2 => 'UM' },
  { :name => 'Uruguay',               :iso_3166_1_alpha_2 => 'UY' },
  { :name => 'Uzbekistan',            :iso_3166_1_alpha_2 => 'UZ' },
  { :name => 'Vanuatu',               :iso_3166_1_alpha_2 => 'VU' },
  { :name => 'Venezuela',             :iso_3166_1_alpha_2 => 'VE' },
  { :name => 'Vietnam',               :iso_3166_1_alpha_2 => 'VN' },
  { :name => 'Virgin Islands, British', :iso_3166_1_alpha_2 => 'VG' },
  { :name => 'Virgin Islands, U.S.',  :iso_3166_1_alpha_2 => 'VI' },
  { :name => 'Wallis and Futuna',     :iso_3166_1_alpha_2 => 'WF' },
  { :name => 'Western Sahara',        :iso_3166_1_alpha_2 => 'EH' },
  { :name => 'Yemen',                 :iso_3166_1_alpha_2 => 'YE' },
  { :name => 'Zambia',                :iso_3166_1_alpha_2 => 'ZM' },
  { :name => 'Zimbabwe',              :iso_3166_1_alpha_2 => 'ZW' }
  ])

austria = Country.find_by_name('Austria').id
france = Country.find_by_name('France').id
italy = Country.find_by_name('Italy').id

chamonix = Resort.create(:country_id => france, :name => 'Chamonix')

Resort.create([
  { :country_id => austria, :name => 'Alpbach' },
  { :country_id => austria, :name => 'Bad Gastein' },
  { :country_id => austria, :name => 'St Anton' },
  { :country_id => austria, :name => 'Tyrol' },
  { :country_id => austria, :name => 'Westendorf' },
  { :country_id => france, :name => 'Avoriaz' },
  { :country_id => france, :name => 'Bernex' },
  { :country_id => france, :name => 'La Tania' },
  { :country_id => france, :name => 'Morzine' },
  { :country_id => italy, :name => 'Cervinia' },
  { :country_id => italy, :name => 'Dolomites' },
  { :country_id => italy, :name => 'Italian Alps' },
])

images = Image.create([
  { :filename => 'chalet1.jpg' },
  { :filename => 'chalet2.jpg' },
  { :filename => 'chalet3.jpg' },
  { :filename => 'chalet4.jpg' },
  { :filename => 'chalet5.jpg' },
  { :filename => 'chalet6.jpg' },
  { :filename => 'chalet7.jpg' },
  { :filename => 'chalet8.jpg' },
  { :filename => 'chalet9.jpg' },
  { :filename => 'chalet10.jpg' },
  { :filename => 'chalet11.jpg' },
  { :filename => 'chalet12.jpg' },
  { :filename => 'chalet13.jpg' },
  { :filename => 'chalet14.jpg' },
  { :filename => 'chalet15.jpg' },
  { :filename => 'chalet16.jpg' },
  { :filename => 'chalet17.jpg' },
  { :filename => 'chalet18.jpg' },
  { :filename => 'chalet19.jpg' },
  { :filename => 'chalet20.jpg' },
  { :filename => 'chalet21.jpg' },
  { :filename => 'chalet22.jpg' },
  { :filename => 'chalet23.jpg' },
  { :filename => 'chalet24.jpg' },
  { :filename => 'chalet25.jpg' },
  { :filename => 'chalet26.jpg' },
  { :filename => 'chalet27.jpg' },
  { :filename => 'chalet28.jpg' },
  { :filename => 'chalet29.jpg' },
  { :filename => 'chalet30.jpg' }
  ])

properties = Property.create([
  { :resort_id => 1, :user_id => 1, :name => "Alpen Lounge",      :sleeping_capacity => 6,   :metres_from_lift => 2500, :weekly_rent_price => 1750, :image_id => 1 },
  { :resort_id => 1, :user_id => 1, :name => "Apartment Teracce", :sleeping_capacity => 8,   :metres_from_lift => 4700, :weekly_rent_price => 2000, :image_id => 2 },
  { :resort_id => 1, :user_id => 1, :name => "Brigitte's Mazot",  :sleeping_capacity => 2,   :metres_from_lift => 3100, :weekly_rent_price => 1825, :image_id => 3 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Alaska",     :sleeping_capacity => 5,   :metres_from_lift => 8300, :weekly_rent_price => 1950, :image_id => 4 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Anchorage",  :sleeping_capacity => 10,  :metres_from_lift => 5000, :weekly_rent_price => 1650, :image_id => 5 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Arkle",      :sleeping_capacity => 14,  :metres_from_lift => 4000, :weekly_rent_price => 1725, :image_id => 6 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Azimuth",    :sleeping_capacity => 8,   :metres_from_lift => 6300, :weekly_rent_price => 2150, :image_id => 7 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Bibendum",   :sleeping_capacity => 8,   :metres_from_lift => 5500, :weekly_rent_price => 1350, :image_id => 8 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Bornian",    :sleeping_capacity => 8,   :metres_from_lift => 4400, :weekly_rent_price => 1400, :image_id => 9 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Chachat",    :sleeping_capacity => 14,  :metres_from_lift => 3500, :weekly_rent_price => 1500, :image_id => 10 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Cachemire",  :sleeping_capacity => 20,  :metres_from_lift => 1400, :weekly_rent_price => 1375, :image_id => 11 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Chardonnet", :sleeping_capacity => 8,   :metres_from_lift => 9300, :weekly_rent_price => 2000, :image_id => 12 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Chintalaya", :sleeping_capacity => 10,  :metres_from_lift => 6500, :weekly_rent_price => 1475, :image_id => 13 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Chosalet",   :sleeping_capacity => 8,   :metres_from_lift => 5900, :weekly_rent_price => 2025, :image_id => 14 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet D'Or",       :sleeping_capacity => 8,   :metres_from_lift => 6000, :weekly_rent_price => 1550, :image_id => 15 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet des Sapins", :sleeping_capacity => 10,  :metres_from_lift => 4300, :weekly_rent_price => 1650, :image_id => 16 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet des Isles",  :sleeping_capacity => 12,  :metres_from_lift => 2600, :weekly_rent_price => 1850, :image_id => 17 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet des Islouts", :sleeping_capacity => 8,  :metres_from_lift => 8500, :weekly_rent_price => 1550, :image_id => 18 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Dubrulle",   :sleeping_capacity => 11,  :metres_from_lift => 5000, :weekly_rent_price => 1575, :image_id => 19 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Eco-Farm",   :sleeping_capacity => 10,  :metres_from_lift => 7200, :weekly_rent_price => 2100, :image_id => 20 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Edelweiss",  :sleeping_capacity => 12,  :metres_from_lift => 4200, :weekly_rent_price => 1900, :image_id => 21 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Eftikhia" ,  :sleeping_capacity => 10,  :metres_from_lift => 5900, :weekly_rent_price => 1600, :image_id => 22 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Flegere",    :sleeping_capacity => 10,  :metres_from_lift => 3400, :weekly_rent_price => 1700, :image_id => 23 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Gauthier",   :sleeping_capacity => 16,  :metres_from_lift => 4300, :weekly_rent_price => 1600, :image_id => 24 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Ghia",       :sleeping_capacity => 8,   :metres_from_lift => 6800, :weekly_rent_price => 1450, :image_id => 25 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Grassonnets", :sleeping_capacity => 8,  :metres_from_lift => 3500, :weekly_rent_price => 1300, :image_id => 26 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Guapa",      :sleeping_capacity => 8,   :metres_from_lift => 4500, :weekly_rent_price => 1800, :image_id => 27 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Ibex",       :sleeping_capacity => 10,  :metres_from_lift => 5600, :weekly_rent_price => 1925, :image_id => 28 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Jomain",     :sleeping_capacity => 18,  :metres_from_lift => 10200, :weekly_rent_price => 2050, :image_id => 29 },
  { :resort_id => 1, :user_id => 1, :name => "Chalet Kushi",      :sleeping_capacity => 8,   :metres_from_lift => 9800, :weekly_rent_price => 1500, :image_id => 30 }
  ])
