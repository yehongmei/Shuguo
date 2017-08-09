package service;

import entities.Comment;
import mapper.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {
    @Autowired
    private CommentMapper commentMapper;
    public  int insertComment(Comment comment){
        return commentMapper.insertComment(comment);
    }
}
