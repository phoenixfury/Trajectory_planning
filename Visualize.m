%% This is to visualize the robot movement

plot3(px,py,pz,'--')
hold on
line([-1 2],[0 0],[0 0],'Color','k','LineStyle','--')
line([0 0],[0 0],[-1 2],'Color','k','LineStyle','--')
line([0 0],[-1 2],[0 0],'Color','k','LineStyle','--')

config_joint_1 = RRR_FK(Q_pos(1,1));
config_joint_2 = RRR_FK(Q_pos(1:2,1));
config_joint_3 = RRR_FK(Q_pos(:,1));

line([0 config_joint_1(1,4)],[0 config_joint_1(2,4)],[0 config_joint_1(3,4)],...
    'linewidth', 2,'Color','black')
line([config_joint_1(1,4) config_joint_2(1,4)],[config_joint_1(2,4) config_joint_2(2,4)],...
    [config_joint_1(3,4) config_joint_2(3,4)],'linewidth', 2,'Color','black')
line([config_joint_2(1,4) config_joint_3(1,4)],[config_joint_2(2,4) config_joint_3(2,4)],...
    [config_joint_2(3,4) config_joint_3(3,4)],'linewidth', 2,'Color','black')

plot3(0,0,0,'r*','linewidth', 4,'MarkerSize',10)
plot3(config_joint_1(1,4),config_joint_1(2,4),config_joint_1(3,4),'r*','linewidth', 4,'MarkerSize',7)
plot3(config_joint_2(1,4),config_joint_2(2,4),config_joint_2(3,4),'r*','linewidth', 4,'MarkerSize',7)
plot3(config_joint_3(1,4),config_joint_3(2,4),config_joint_3(3,4),'r*','linewidth', 4,'MarkerSize',7)

config_joint_1 = RRR_FK(Q_pos(1,end));
config_joint_2 = RRR_FK(Q_pos(1:2,end));
config_joint_3 = RRR_FK(Q_pos(:,end));

line([0 config_joint_1(1,4)],[0 config_joint_1(2,4)],[0 config_joint_1(3,4)],...
    'linewidth', 2,'Color','blue')
line([config_joint_1(1,4) config_joint_2(1,4)],[config_joint_1(2,4) config_joint_2(2,4)],...
    [config_joint_1(3,4) config_joint_2(3,4)],'linewidth', 2,'Color','blue')
line([config_joint_2(1,4) config_joint_3(1,4)],[config_joint_2(2,4) config_joint_3(2,4)],...
    [config_joint_2(3,4) config_joint_3(3,4)],'linewidth', 2,'Color','blue')


plot3(config_joint_1(1,4),config_joint_1(2,4),config_joint_1(3,4),'g*','linewidth', 4,'MarkerSize',7)
plot3(config_joint_2(1,4),config_joint_2(2,4),config_joint_2(3,4),'g*','linewidth', 4,'MarkerSize',7)
plot3(config_joint_3(1,4),config_joint_3(2,4),config_joint_3(3,4),'g*','linewidth', 4,'MarkerSize',7)
