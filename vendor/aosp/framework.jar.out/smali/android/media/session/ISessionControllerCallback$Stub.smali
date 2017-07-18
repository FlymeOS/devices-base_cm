.class public abstract Landroid/media/session/ISessionControllerCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionControllerCallback.java"

# interfaces
.implements Landroid/media/session/ISessionControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionControllerCallback"

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlayItemResponse:I = 0x9

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onUpdateFolderInfoBrowsedPlayer:I = 0xb

.field static final TRANSACTION_onUpdateNowPlayingContentChange:I = 0xc

.field static final TRANSACTION_onUpdateNowPlayingEntries:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.session.ISessionControllerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionControllerCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/session/ISessionControllerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 45
    :sswitch_0
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    .line 50
    :sswitch_1
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 55
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 60
    :goto_0
    invoke-virtual {p0, v6, v9}, Landroid/media/session/ISessionControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    const/4 v10, 0x1

    return v10

    .line 58
    :cond_0
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 65
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/media/session/ISessionControllerCallback$Stub;->onSessionDestroyed()V

    .line 67
    const/4 v10, 0x1

    return v10

    .line 71
    :sswitch_3
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 74
    sget-object v10, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState;

    .line 79
    :goto_1
    invoke-virtual {p0, v3}, Landroid/media/session/ISessionControllerCallback$Stub;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 80
    const/4 v10, 0x1

    return v10

    .line 77
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/media/session/PlaybackState;
    goto :goto_1

    .line 84
    .end local v3    # "_arg0":Landroid/media/session/PlaybackState;
    :sswitch_4
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 87
    sget-object v10, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMetadata;

    .line 92
    :goto_2
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionControllerCallback$Stub;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 93
    const/4 v10, 0x1

    return v10

    .line 90
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/media/MediaMetadata;
    goto :goto_2

    .line 97
    .end local v1    # "_arg0":Landroid/media/MediaMetadata;
    :sswitch_5
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 100
    sget-object v10, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 105
    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 106
    const/4 v10, 0x1

    return v10

    .line 103
    :cond_3
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_3

    .line 110
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_6
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    .line 113
    sget-object v10, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 118
    :goto_4
    invoke-virtual {p0, v5}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 119
    const/4 v10, 0x1

    return v10

    .line 116
    :cond_4
    const/4 v5, 0x0

    .local v5, "_arg0":Ljava/lang/CharSequence;
    goto :goto_4

    .line 123
    .end local v5    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_7
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    .line 126
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 131
    :goto_5
    invoke-virtual {p0, v4}, Landroid/media/session/ISessionControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 132
    const/4 v10, 0x1

    return v10

    .line 129
    :cond_5
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .line 136
    .end local v4    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 139
    sget-object v10, Landroid/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/ParcelableVolumeInfo;

    .line 144
    :goto_6
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V

    .line 145
    const/4 v10, 0x1

    return v10

    .line 142
    :cond_6
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/media/session/ParcelableVolumeInfo;
    goto :goto_6

    .line 149
    .end local v2    # "_arg0":Landroid/media/session/ParcelableVolumeInfo;
    :sswitch_9
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v7, 0x1

    .line 152
    .local v7, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v7}, Landroid/media/session/ISessionControllerCallback$Stub;->onPlayItemResponse(Z)V

    .line 153
    const/4 v10, 0x1

    return v10

    .line 151
    .end local v7    # "_arg0":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_7

    .line 157
    .end local v7    # "_arg0":Z
    :sswitch_a
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v8

    .line 160
    .local v8, "_arg0":[J
    invoke-virtual {p0, v8}, Landroid/media/session/ISessionControllerCallback$Stub;->onUpdateNowPlayingEntries([J)V

    .line 161
    const/4 v10, 0x1

    return v10

    .line 165
    .end local v8    # "_arg0":[J
    :sswitch_b
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 168
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/media/session/ISessionControllerCallback$Stub;->onUpdateFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    .line 169
    const/4 v10, 0x1

    return v10

    .line 173
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v10, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/media/session/ISessionControllerCallback$Stub;->onUpdateNowPlayingContentChange()V

    .line 175
    const/4 v10, 0x1

    return v10

    .line 41
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
