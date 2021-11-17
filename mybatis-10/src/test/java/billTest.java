import com.ma.dao.bill.BillMapper;
import com.ma.pojo.Bill;
import com.ma.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class billTest {

    //增加订单
    @Test
    public void add(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        BillMapper mapper = sqlSession.getMapper(BillMapper.class);

        mapper.add(new Bill(5,"005","橡皮擦","改错","哔哩",999.00,1000.00,1));

        sqlSession.close();
    }

    //通过billId获取Bill
    @Test
    public void getBillById(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        BillMapper mapper = sqlSession.getMapper(BillMapper.class);

        Bill bill = mapper.getBillById(1);
        System.out.println(bill);

        sqlSession.close();
    }
}
