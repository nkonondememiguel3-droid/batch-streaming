"""create items

Revision ID: 72a01a2a0f10
Revises:
Create Date: 2026-10-16 10:26:34.331283

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa

from utility.sql_loader import load_sql


# revision identifiers, used by Alembic.
revision: str = '72a01a2a0f10'
down_revision: Union[str, Sequence[str], None] = None
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    op.execute( load_sql( "initdb/01_init.sql" ) )


def downgrade() -> None:
    op.execute( load_sql( "initdb/01_init_down.sql" ) )

