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

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x12

.field static final TRANSACTION_timeShiftPause:I = 0xe

.field static final TRANSACTION_timeShiftResume:I = 0xf

.field static final TRANSACTION_timeShiftSeekTo:I = 0x10

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x11

.field static final TRANSACTION_tune:I = 0x6

.field static final TRANSACTION_unblockContent:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/media/tv/ITvInputSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 233
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    .line 46
    :sswitch_0
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/16 v18, 0x1

    return v18

    .line 51
    :sswitch_1
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    .line 53
    const/16 v18, 0x1

    return v18

    .line 57
    :sswitch_2
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_0

    const/4 v12, 0x1

    .line 60
    .local v12, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    .line 61
    const/16 v18, 0x1

    return v18

    .line 59
    .end local v12    # "_arg0":Z
    :cond_0
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Z
    goto :goto_0

    .line 65
    .end local v12    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1

    .line 68
    sget-object v18, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    .line 73
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 74
    const/16 v18, 0x1

    return v18

    .line 71
    :cond_1
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/view/Surface;
    goto :goto_1

    .line 78
    .end local v10    # "_arg0":Landroid/view/Surface;
    :sswitch_4
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 84
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 85
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v13, v1}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    .line 86
    const/16 v18, 0x1

    return v18

    .line 90
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v17    # "_arg2":I
    :sswitch_5
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 93
    .local v2, "_arg0":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    .line 94
    const/16 v18, 0x1

    return v18

    .line 98
    .end local v2    # "_arg0":F
    :sswitch_6
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_2

    .line 101
    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 107
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_3

    .line 108
    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    .line 113
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 114
    const/16 v18, 0x1

    return v18

    .line 104
    :cond_2
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/Uri;
    goto :goto_2

    .line 111
    .end local v8    # "_arg0":Landroid/net/Uri;
    :cond_3
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 118
    .end local v15    # "_arg1":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v12, 0x1

    .line 121
    .restart local v12    # "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    .line 122
    const/16 v18, 0x1

    return v18

    .line 120
    .end local v12    # "_arg0":Z
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Z
    goto :goto_4

    .line 126
    .end local v12    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 131
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    .line 132
    const/16 v18, 0x1

    return v18

    .line 136
    .end local v3    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_5

    .line 141
    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    .line 146
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 147
    const/16 v18, 0x1

    return v18

    .line 144
    :cond_5
    const/4 v15, 0x0

    .restart local v15    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 151
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 155
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_6

    .line 156
    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 161
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 162
    const/16 v18, 0x1

    return v18

    .line 159
    :cond_6
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/graphics/Rect;
    goto :goto_6

    .line 166
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/graphics/Rect;
    :sswitch_b
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_7

    .line 169
    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 174
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 175
    const/16 v18, 0x1

    return v18

    .line 172
    :cond_7
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/graphics/Rect;
    goto :goto_7

    .line 179
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :sswitch_c
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    .line 181
    const/16 v18, 0x1

    return v18

    .line 185
    :sswitch_d
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 188
    .restart local v11    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    .line 189
    const/16 v18, 0x1

    return v18

    .line 193
    .end local v11    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    .line 195
    const/16 v18, 0x1

    return v18

    .line 199
    :sswitch_f
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    .line 201
    const/16 v18, 0x1

    return v18

    .line 205
    :sswitch_10
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 208
    .local v4, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    .line 209
    const/16 v18, 0x1

    return v18

    .line 213
    .end local v4    # "_arg0":J
    :sswitch_11
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_8

    .line 216
    sget-object v18, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/PlaybackParams;

    .line 221
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 222
    const/16 v18, 0x1

    return v18

    .line 219
    :cond_8
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/media/PlaybackParams;
    goto :goto_8

    .line 226
    .end local v7    # "_arg0":Landroid/media/PlaybackParams;
    :sswitch_12
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_9

    const/4 v12, 0x1

    .line 229
    .restart local v12    # "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    .line 230
    const/16 v18, 0x1

    return v18

    .line 228
    .end local v12    # "_arg0":Z
    :cond_9
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Z
    goto :goto_9

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
