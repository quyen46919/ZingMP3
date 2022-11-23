package hibernate.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import hibernate.entities.Singer;

@Repository
public class SingerDAOImpl implements SingerDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public Singer createSinger(Singer singer) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(singer);
		return singer;
	}
	
	@Override
	public List<Singer> getSingerList() {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.createQuery("Select new Singer(s.id, s.name, s.story, s.imageUrl) from Singer s", Singer.class).getResultList();
	}

	@Override
	public boolean deleteSinger(String singerId) {
		Session currentSession = sessionFactory.getCurrentSession();
		try {
			 Query query = currentSession.createQuery("Delete from Singer where id=:id");
			 query.setParameter("id", singerId);
			 query.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}		
	}
}
