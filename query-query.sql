
      SELECT 
        ua.id,
        ua.applicant_name,
        ua.applicant_email,
        ua.applicant_phone,
        ua.course_interest,
        ua.academic_background,
        ua.message,
        ua.status,
        ua.created_at,
        u.name as university_name,
        u.short_name as university_short_name
      FROM university_applications ua
      JOIN universities u ON ua.university_id = u.id
      ORDER BY ua.created_at DESC;
    