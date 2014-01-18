package object

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import enums.Positions;

@Table(name="Points")
class PointSetting {
	
	League league;
	Positions position;
	double kill;
	double assist;
	double death;
	double cs;
	double dragon;
	double baron;
	double towerWon;
	double towerLoss;
	double win;
	double loss;
	
	

}
