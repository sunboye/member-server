module.exports = {
  async getLogsDB(app, params) {
    const table = app.config.mysql.tables.opLogs;
    const vipers = app.config.mysql.tables.vipers;
    let count = 0;
    params.offset = (Number(params.current) - 1) * params.limit
    // 连表查询
    const sqlStr = `SELECT l.*, u.name FROM ${table} l JOIN ${vipers} u ON l.user_id = u.id LIMIT ${params.offset},${params.limit}`;
    const countStr = `SELECT COUNT(*) as count FROM ${table}`;
    console.log('sqlStr:' + sqlStr);
    count = await app.mysql.query(countStr);
    const data = await app.mysql.query(sqlStr);
    return {
      records: data,
      size: Number(params.limit),
      total: count.length ? count[0].count || 0 : 0,
      current: Number(params.current)
    };
  }
}
