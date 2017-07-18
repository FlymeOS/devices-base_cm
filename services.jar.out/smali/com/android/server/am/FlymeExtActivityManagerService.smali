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
    .locals 11
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
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 26
    :pswitch_0
    const-string/jumbo v8, "android.app.FlymeExtIActivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 28
    .local v7, "token":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 30
    :goto_0
    invoke-virtual {p0, v7, v2, v1}, Lcom/android/server/am/FlymeExtActivityManagerService;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    return v9

    .line 29
    :cond_0
    const/4 v1, 0x0

    .local v1, "options":Landroid/os/Bundle;
    goto :goto_0

    .line 36
    .end local v1    # "options":Landroid/os/Bundle;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "token":Landroid/os/IBinder;
    :pswitch_1
    const-string/jumbo v10, "android.app.FlymeExtIActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 38
    .local v6, "taskId":I
    invoke-virtual {p0, v6}, Lcom/android/server/am/FlymeExtActivityManagerService;->removeTaskNotKillProcess(I)Z

    move-result v5

    .line 39
    .local v5, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    if-eqz v5, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return v9

    .line 45
    .end local v5    # "result":Z
    .end local v6    # "taskId":I
    :pswitch_2
    const-string/jumbo v8, "android.app.FlymeExtIActivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 47
    .local v3, "pid":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 48
    .local v0, "level":I
    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/FlymeExtActivityManagerService;->shrinkProcessMemory(II)V

    .line 49
    return v9

    .line 53
    .end local v0    # "level":I
    .end local v3    # "pid":I
    :pswitch_3
    const-string/jumbo v8, "android.app.FlymeExtIActivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .restart local v3    # "pid":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "reason":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/FlymeExtActivityManagerService;->killPid(ILjava/lang/String;)V

    .line 57
    return v9

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
