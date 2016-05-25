.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x9

.field static final TRANSACTION_createOverlayView:I = 0xa

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final TRANSACTION_relayoutOverlayView:I = 0xb

.field static final TRANSACTION_release:I = 0x1

.field static final TRANSACTION_removeOverlayView:I = 0xc

.field static final TRANSACTION_requestUnblockContent:I = 0xd

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_tune:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/media/tv/ITvInputSession;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 60
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Z
    :sswitch_3
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 73
    .local v0, "_arg0":Landroid/view/Surface;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_1

    .line 78
    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_4
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_5
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 93
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":F
    :sswitch_6
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 107
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 113
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_2

    .line 111
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 118
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_7
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 121
    .local v0, "_arg0":Z
    :cond_4
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Z
    :sswitch_8
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 146
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 144
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 151
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_a
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 155
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 156
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 161
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 159
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_5

    .line 166
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_b
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 169
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 174
    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_6

    .line 179
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :sswitch_c
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    goto/16 :goto_0

    .line 185
    :sswitch_d
    const-string v4, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->requestUnblockContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
