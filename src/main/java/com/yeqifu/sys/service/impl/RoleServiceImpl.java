package com.yeqifu.sys.service.impl;

import com.yeqifu.sys.entity.Role;
import com.yeqifu.sys.mapper.RoleMapper;
import com.yeqifu.sys.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * InnoDB free: 9216 kB 服务实现类
 * </p>
 *
 * @author admin
 * @since 2021/10/13
 */
@Service
@Transactional
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

    @Override
    public boolean removeById(Serializable id) {
        //根据角色ID删除sys_role_permission表中的数据
        this.getBaseMapper().deleteRolePermissionByRid(id);
        //根据角色ID删除sys_user_role表中的数据
        this.getBaseMapper().deleteUserRoleByRid(id);
        return super.removeById(id);
    }

    /**
     * 根据角色ID查询当前角色拥有的菜单ID和权限ID
     * @param roleId
     * @return
     */
    @Override
    public List<Integer> queryRolePermissionIdsByRid(Integer roleId) {
        return this.getBaseMapper().queryRolePermissionIdsByRid(roleId);
    }

    /**
     * 保存角色和菜单权限之间的关系
     * @param rid
     * @param ids
     */
    @Override
    public void saveRolePermission(Integer rid, Integer[] ids) {
        RoleMapper roleMapper = this.getBaseMapper();
        //根据rid删除sys_role_permission
        roleMapper.deleteRolePermissionByRid(rid);
        if (ids!=null&&ids.length>0){
            for (Integer pid : ids){
                roleMapper.saveRolePermission(rid,pid);
            }
        }
    }

    /**
     * 查询当前用户拥有的角色ID集合
     * @param id
     * @return
     */
    @Override
    public List<Integer> queryUserRoleIdsByUid(Integer id) {
        return getBaseMapper().queryUserRoleIdsByUid(id);

    }
}
