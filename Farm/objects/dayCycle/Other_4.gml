switch(room) {
	case room_farm: shouldDrawDaylight = true; break;
	case room_farm_house: shouldDrawDaylight = false; break;
	case room_farm_house_bedroom: shouldDrawDaylight = false; break
	case room_forest: shouldDrawDaylight = true; break;
	default: shouldDrawDaylight = true; break;
}