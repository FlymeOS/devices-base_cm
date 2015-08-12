.class public interface abstract Lcom/android/internal/view/MzIInputMethodManager;
.super Ljava/lang/Object;
.source "MzIInputMethodManager.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field public static final TRANSACTION_mzIsShown:I = 0x65

.field public static final TRANSACTION_mzSetFlags:I = 0x66


# virtual methods
.method public abstract mzIsShown()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract mzSetFlags(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
