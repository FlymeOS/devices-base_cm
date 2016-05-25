.class public abstract Landroid/media/tv/ITvInputHardware$Stub;
.super Landroid/os/Binder;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputHardware"

.field static final TRANSACTION_dispatchKeyEventToHdmi:I = 0x3

.field static final TRANSACTION_overrideAudioSink_3:I = 0x4

.field static final TRANSACTION_setStreamVolume:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "android.media.tv.ITvInputHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputHardware;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/media/tv/ITvInputHardware;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Landroid/media/tv/ITvInputHardware$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 49
    :sswitch_0
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v8, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 57
    sget-object v8, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 63
    .local v1, "_arg0":Landroid/view/Surface;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    .line 64
    sget-object v8, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvStreamConfig;

    .line 69
    .local v2, "_arg1":Landroid/media/tv/TvStreamConfig;
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputHardware$Stub;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v6

    .line 70
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v1    # "_arg0":Landroid/view/Surface;
    .end local v2    # "_arg1":Landroid/media/tv/TvStreamConfig;
    .end local v6    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/Surface;
    goto :goto_1

    .line 67
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/media/tv/TvStreamConfig;
    goto :goto_2

    .line 76
    .end local v1    # "_arg0":Landroid/view/Surface;
    .end local v2    # "_arg1":Landroid/media/tv/TvStreamConfig;
    :sswitch_2
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 79
    .local v1, "_arg0":F
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputHardware$Stub;->setStreamVolume(F)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v1    # "_arg0":F
    :sswitch_3
    const-string v8, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    .line 88
    sget-object v8, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 93
    .local v1, "_arg0":Landroid/view/KeyEvent;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputHardware$Stub;->dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z

    move-result v6

    .line 94
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v6, :cond_3

    move v0, v7

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    .end local v6    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_3

    .line 100
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_4
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware$Stub;->overrideAudioSink(ILjava/lang/String;III)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
