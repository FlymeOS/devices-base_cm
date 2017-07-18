.class public interface abstract Landroid/app/FlymeExtIActivityManager;
.super Ljava/lang/Object;
.source "FlymeExtIActivityManager.java"


# static fields
.field public static final FIRST_CALL_TRANSACTION:I = 0x2710

.field public static final TRANSACTION_KILL_PID:I = 0x2714

.field public static final TRANSACTION_OVERRIDE_PENDING_TRANSITION:I = 0x2711

.field public static final TRANSACTION_REMOVE_TASK_NOT_KILL_PROCESS:I = 0x2712

.field public static final TRANSACTION_SHRINK_PROCESS_MEMORY:I = 0x2713


# virtual methods
.method public abstract killPid(Landroid/os/IBinder;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract overridePendingTransition(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeTaskNotKillProcess(Landroid/os/IBinder;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shrinkProcessMemory(Landroid/os/IBinder;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
