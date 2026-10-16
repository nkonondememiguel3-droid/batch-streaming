"""create the items sources table

Revision ID: 62580d352400
Revises: 72a01a2a0f10
Create Date: 2026-10-16 12:18:40.472420

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa

from utility.sql_loader import load_sql


# revision identifiers, used by Alembic.
revision: str = '62580d352400'
down_revision: Union[str, Sequence[str], None] = '72a01a2a0f10'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    op.execute(load_sql( "initdb/02_item_sources.sql" ))


def downgrade() -> None:
    op.execute(load_sql( "initdb/02_item_sources_down.sql" ))

