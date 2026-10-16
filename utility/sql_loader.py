import io

def load_sql( path: str ) -> str:
    str_build = io.StringIO()
    try:
        with open( path ) as handle:
            while ( line := handle.readline() ) :
                str_build.write( line )

        return str_build.getvalue()

    except FileNotFoundError as e:
        print(f"{path} does not exists")
        raise e

