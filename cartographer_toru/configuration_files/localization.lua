-- Copyright 2018 Magazino GmbH
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

TRAJECTORY_BUILDER.pure_localization = true
TRAJECTORY_BUILDER_2D.submaps.resolution = 0.05

POSE_GRAPH.constraint_builder.max_constraint_distance = 10.
POSE_GRAPH.optimize_every_n_nodes = 2
POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.linear_search_window = 0.3
POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.angular_search_window = math.rad(5.0)
