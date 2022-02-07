DROP FUNCTION get_invoice_count(
    salesperson_id INTEGER
);

CREATE OR REPLACE FUNCTION get_invoice_count(
    id INTEGER
)

RETURNS int
LANGUAGE plpgsql
AS
$$
DECLARE
    invoice_count integer;
BEGIN
    SELECT count(*)
    INTO invoice_count
    FROM invoice
    WHERE invoice.salesperson_id = id;
    RETURN invoice_count;
END
$$;

SELECT get_invoice_count(1)

