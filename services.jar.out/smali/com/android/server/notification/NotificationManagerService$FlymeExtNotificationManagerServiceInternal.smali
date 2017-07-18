.class Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;
.super Lcom/android/server/notification/NotificationManagerService$6;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlymeExtNotificationManagerServiceInternal"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.FlymeExtINotificationManager"


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public getPackageHeadsUpVisibility(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1153
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    .line 1154
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageRemindEnable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1164
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    .line 1165
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1110
    packed-switch p1, :pswitch_data_0

    .line 1148
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$6;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 1112
    :pswitch_0
    const-string/jumbo v6, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1115
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v4

    .line 1116
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    return v7

    .line 1121
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_1
    const-string/jumbo v6, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1124
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1125
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->setPackageHeadsUpVisibility(Ljava/lang/String;II)V

    .line 1126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    return v7

    .line 1130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2
    const-string/jumbo v8, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1133
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v5

    .line 1134
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    return v7

    .line 1139
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_3
    const-string/jumbo v6, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1142
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 1143
    .local v3, "_arg2":Z
    :goto_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    return v7

    .line 1142
    .end local v3    # "_arg2":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Z
    goto :goto_0

    .line 1110
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 1158
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    .line 1159
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackageHeadsUpVisibility(Ljava/lang/String;II)V

    .line 1160
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1157
    return-void
.end method

.method public setPackageRemindEnable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 1169
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    .line 1170
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    .line 1171
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1168
    return-void
.end method
