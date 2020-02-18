\* UnionPac *\
Minimize
The_total_cost_of_transport: 72 Route_('Atlanta',_'Chicago')
 + 78 Route_('Atlanta',_'Dallas') + 70 Route_('Baltimore',_'Chicago')
 + 136 Route_('Baltimore',_'Dallas') + 277 Route_('Baltimore',_'Fresno')
 + 214 Route_('Chicago',_'Eugene') + 213 Route_('Chicago',_'Fresno')
 + 138 Route_('Chicago',_'Great_Falls') + 206 Route_('Dallas',_'Eugene')
 + 156 Route_('Dallas',_'Fresno')
Subject To
Car_flow_conservation_in_node_Atlanta: - Route_('Atlanta',_'Chicago')
 - Route_('Atlanta',_'Dallas') >= -300
Car_flow_conservation_in_node_Baltimore: - Route_('Baltimore',_'Chicago')
 - Route_('Baltimore',_'Dallas') - Route_('Baltimore',_'Fresno') >= -200
Car_flow_conservation_in_node_Chicago: Route_('Atlanta',_'Chicago')
 + Route_('Baltimore',_'Chicago') - Route_('Chicago',_'Eugene')
 - Route_('Chicago',_'Fresno') - Route_('Chicago',_'Great_Falls') >= 0
Car_flow_conservation_in_node_Dallas: Route_('Atlanta',_'Dallas')
 + Route_('Baltimore',_'Dallas') - Route_('Dallas',_'Eugene')
 - Route_('Dallas',_'Fresno') >= 0
Car_flow_conservation_in_node_Eugene: Route_('Chicago',_'Eugene')
 + Route_('Dallas',_'Eugene') >= 150
Car_flow_conservation_in_node_Fresno: Route_('Baltimore',_'Fresno')
 + Route_('Chicago',_'Fresno') + Route_('Dallas',_'Fresno') >= 200
Car_flow_conservation_in_node_Great_Falls: Route_('Chicago',_'Great_Falls')
 >= 100
Bounds
0 <= Route_('Atlanta',_'Chicago') <= 500
0 <= Route_('Atlanta',_'Dallas') <= 500
0 <= Route_('Baltimore',_'Chicago') <= 500
0 <= Route_('Baltimore',_'Dallas') <= 500
0 <= Route_('Baltimore',_'Fresno') <= 500
0 <= Route_('Chicago',_'Eugene') <= 500
0 <= Route_('Chicago',_'Fresno') <= 500
0 <= Route_('Chicago',_'Great_Falls') <= 500
0 <= Route_('Dallas',_'Eugene') <= 500
0 <= Route_('Dallas',_'Fresno') <= 500
Generals
Route_('Atlanta',_'Chicago')
Route_('Atlanta',_'Dallas')
Route_('Baltimore',_'Chicago')
Route_('Baltimore',_'Dallas')
Route_('Baltimore',_'Fresno')
Route_('Chicago',_'Eugene')
Route_('Chicago',_'Fresno')
Route_('Chicago',_'Great_Falls')
Route_('Dallas',_'Eugene')
Route_('Dallas',_'Fresno')
End
