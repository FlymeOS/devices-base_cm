.class public abstract Landroid/print/ILayoutResultCallback$Stub;
.super Landroid/os/Binder;
.source "ILayoutResultCallback.java"

# interfaces
.implements Landroid/print/ILayoutResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/ILayoutResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/ILayoutResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.ILayoutResultCallback"

.field static final TRANSACTION_onLayoutCanceled:I = 0x4

.field static final TRANSACTION_onLayoutFailed:I = 0x3

.field static final TRANSACTION_onLayoutFinished:I = 0x2

.field static final TRANSACTION_onLayoutStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.print.ILayoutResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.print.ILayoutResultCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/ILayoutResultCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/print/ILayoutResultCallback;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/print/ILayoutResultCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/print/ILayoutResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v4, "android.print.ILayoutResultCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Landroid/os/ICancellationSignal;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v4, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintDocumentInfo;

    .line 71
    .local v0, "_arg0":Landroid/print/PrintDocumentInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 73
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Landroid/print/PrintDocumentInfo;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintDocumentInfo;
    goto :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 79
    .end local v0    # "_arg0":Landroid/print/PrintDocumentInfo;
    :sswitch_3
    const-string v4, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 88
    .local v0, "_arg0":Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFailed(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    .end local v1    # "_arg1":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_3

    .line 94
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_4
    const-string v4, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutCanceled(I)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
