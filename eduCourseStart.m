function eduCourseStart()
% Course preferences
addEduCourseToPath();
p = eduCoursePrefs;
cd(p.coursepath);
open edu_course_content.mlx
u = MATLABCourseforEducatorsUpdater();
u.isupdate(@upd_fun);
    function upd_fun(isupdate)
        if isupdate
            fprintf('\n * �������� ����� ������ ����� "MATLAB ��� ��������������"\n');
            fprintf('   ����� ����������, ��������� ���������� <a href="matlab:EduCourseApp">EduCourseApp</a>\n');
        end
    end
end

