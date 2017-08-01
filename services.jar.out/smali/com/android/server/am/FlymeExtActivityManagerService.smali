.class public Lcom/android/server/am/FlymeExtActivityManagerService;
.super Lcom/android/server/am/ActivityManagerService;
.source "FlymeExtActivityManagerService.java"


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.FlymeExtIActivityManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "systemContext"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object p0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    .line 19
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->flymeSetup(Lcom/android/server/am/ActivityManagerService;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    packed-switch p1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Lcom/android/server/am/ActivityManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :pswitch_0
    const-string v13, "android.app.FlymeExtIActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .local v11, "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    sget-object v13, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p0, v11, v6, v5}, Lcom/android/server/am/FlymeExtActivityManagerService;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_0
    const/4 v5, 0x0

    .local v5, "options":Landroid/os/Bundle;
    goto :goto_0

    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v11    # "token":Landroid/os/IBinder;
    :pswitch_1
    const-string v13, "android.app.FlymeExtIActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "taskId":I
    invoke-virtual {p0, v10}, Lcom/android/server/am/FlymeExtActivityManagerService;->removeTaskNotKillProcess(I)Z

    move-result v9

    .local v9, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_1

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .end local v9    # "result":Z
    .end local v10    # "taskId":I
    :pswitch_2
    const-string v13, "android.app.FlymeExtIActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "level":I
    invoke-virtual {p0, v7, v4}, Lcom/android/server/am/FlymeExtActivityManagerService;->shrinkProcessMemory(II)V

    const/4 v13, 0x1

    return v13

    .end local v4    # "level":I
    .end local v7    # "pid":I
    :pswitch_3
    const-string v13, "android.app.FlymeExtIActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "reason":Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/FlymeExtActivityManagerService;->killPid(ILjava/lang/String;)V

    const/4 v13, 0x1

    return v13

    .end local v7    # "pid":I
    .end local v8    # "reason":Ljava/lang/String;
    :pswitch_4
    const-string v13, "android.app.FlymeExtIActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "eventLength":I
    const/4 v1, 0x0

    .local v1, "event":[Landroid/view/MotionEvent;
    if-lez v2, :cond_2

    new-array v1, v2, [Landroid/view/MotionEvent;

    .local v1, "event":[Landroid/view/MotionEvent;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    sget-object v13, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/MotionEvent;

    aput-object v13, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "event":[Landroid/view/MotionEvent;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "value":I
    invoke-virtual {p0, v1, v12}, Lcom/android/server/am/FlymeExtActivityManagerService;->scrollTopActivity([Landroid/view/MotionEvent;I)V

    const/4 v13, 0x1

    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
