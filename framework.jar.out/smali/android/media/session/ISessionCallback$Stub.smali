.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final TRANSACTION_getRemoteControlClientNowPlayingEntries:I = 0x10

.field static final TRANSACTION_onAdjustVolume:I = 0x13

.field static final TRANSACTION_onCommand:I = 0x1

.field static final TRANSACTION_onCustomAction:I = 0x12

.field static final TRANSACTION_onFastForward:I = 0xb

.field static final TRANSACTION_onMediaButton:I = 0x2

.field static final TRANSACTION_onNext:I = 0x9

.field static final TRANSACTION_onPause:I = 0x7

.field static final TRANSACTION_onPlay:I = 0x3

.field static final TRANSACTION_onPlayFromMediaId:I = 0x4

.field static final TRANSACTION_onPlayFromSearch:I = 0x5

.field static final TRANSACTION_onPrevious:I = 0xa

.field static final TRANSACTION_onRate:I = 0x11

.field static final TRANSACTION_onRewind:I = 0xc

.field static final TRANSACTION_onSeekTo:I = 0xd

.field static final TRANSACTION_onSetVolumeTo:I = 0x14

.field static final TRANSACTION_onSkipToTrack:I = 0x6

.field static final TRANSACTION_onStop:I = 0x8

.field static final TRANSACTION_setRemoteControlClientBrowsedPlayer:I = 0xe

.field static final TRANSACTION_setRemoteControlClientPlayItem:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.session.ISessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.media.session.ISessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/session/ISessionCallback;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/session/ISessionCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 61
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 67
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 58
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 65
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_2

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 81
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 89
    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    :goto_4
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_3

    .line 87
    .restart local v2    # "_arg1":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_4

    .line 94
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_3
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPlay()V

    goto :goto_0

    .line 100
    :sswitch_4
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 110
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 108
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 125
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 123
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_6

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_6
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 133
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(J)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":J
    :sswitch_7
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPause()V

    goto/16 :goto_0

    .line 144
    :sswitch_8
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onStop()V

    goto/16 :goto_0

    .line 150
    :sswitch_9
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onNext()V

    goto/16 :goto_0

    .line 156
    :sswitch_a
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrevious()V

    goto/16 :goto_0

    .line 162
    :sswitch_b
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onFastForward()V

    goto/16 :goto_0

    .line 168
    :sswitch_c
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onRewind()V

    goto/16 :goto_0

    .line 174
    :sswitch_d
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 177
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(J)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":J
    :sswitch_e
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->setRemoteControlClientBrowsedPlayer()V

    goto/16 :goto_0

    .line 188
    :sswitch_f
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 192
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/session/ISessionCallback$Stub;->setRemoteControlClientPlayItem(JI)V

    goto/16 :goto_0

    .line 198
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :sswitch_10
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->getRemoteControlClientNowPlayingEntries()V

    goto/16 :goto_0

    .line 204
    :sswitch_11
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 207
    sget-object v5, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    .line 212
    .local v0, "_arg0":Landroid/media/Rating;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onRate(Landroid/media/Rating;)V

    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":Landroid/media/Rating;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/Rating;
    goto :goto_7

    .line 217
    .end local v0    # "_arg0":Landroid/media/Rating;
    :sswitch_12
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 227
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 225
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_13
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(I)V

    goto/16 :goto_0

    .line 240
    .end local v0    # "_arg0":I
    :sswitch_14
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(I)V

    goto/16 :goto_0

    .line 41
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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
