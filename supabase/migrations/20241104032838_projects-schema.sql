drop table if exixts projects;

drop type if exhists current_status;
create type current_status as enum ('in-progreeess','completed');

create table projects{
	id bigint primary key generated always as identity not null,
	created_at timestampstz default now() not null,
	name text not null,
	slug text unique not null,
	status current_status dafult 'in-progress' not null,
	collaborators text array default array[]::varchar[] not null
};

