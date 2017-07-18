.class public Lcyanogenmod/app/StatusBarPanelCustomTile;
.super Ljava/lang/Object;
.source "StatusBarPanelCustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/StatusBarPanelCustomTile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/StatusBarPanelCustomTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final customTile:Lcyanogenmod/app/CustomTile;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private final opPkg:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final resPkg:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcyanogenmod/app/StatusBarPanelCustomTile$1;

    invoke-direct {v0}, Lcyanogenmod/app/StatusBarPanelCustomTile$1;-><init>()V

    .line 140
    sput-object v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 76
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 79
    .local v1, "parcelableVersion":I
    const/4 v7, 0x0

    .line 80
    .local v7, "tmpResPkg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 81
    .local v6, "tmpPkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 82
    .local v4, "tmpOpPkg":Ljava/lang/String;
    const/4 v3, -0x1

    .line 83
    .local v3, "tmpId":I
    const/4 v10, 0x0

    .line 84
    .local v10, "tmpTag":Ljava/lang/String;
    const/4 v11, -0x1

    .line 85
    .local v11, "tmpUid":I
    const/4 v5, -0x1

    .line 86
    .local v5, "tmpPid":I
    const/4 v2, 0x0

    .line 87
    .local v2, "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    const/4 v12, 0x0

    .line 88
    .local v12, "tmpUser":Landroid/os/UserHandle;
    const-wide/16 v8, -0x1

    .line 93
    .local v8, "tmpPostTime":J
    const/4 v13, 0x1

    if-lt v1, v13, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "tmpPkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "tmpOpPkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 103
    .end local v10    # "tmpTag":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    new-instance v2, Lcyanogenmod/app/CustomTile;

    .end local v2    # "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    invoke-direct {v2, p1}, Lcyanogenmod/app/CustomTile;-><init>(Landroid/os/Parcel;)V

    .line 106
    .local v2, "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v12

    .line 107
    .local v12, "tmpUser":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 110
    .end local v2    # "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    .end local v4    # "tmpOpPkg":Ljava/lang/String;
    .end local v6    # "tmpPkg":Ljava/lang/String;
    .end local v12    # "tmpUser":Landroid/os/UserHandle;
    :cond_0
    const/4 v13, 0x2

    if-lt v1, v13, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 115
    .end local v7    # "tmpResPkg":Ljava/lang/String;
    :cond_1
    iput-object v7, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    .line 116
    iput-object v6, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    .line 117
    iput-object v4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 118
    iput v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    .line 119
    iput-object v10, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    .line 120
    iput v11, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    .line 121
    iput v5, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    .line 122
    iput-object v2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    .line 123
    iput-object v12, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    .line 124
    iput-wide v8, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    .line 125
    invoke-direct {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 73
    return-void

    .line 101
    .local v2, "tmpCustomTile":Lcyanogenmod/app/CustomTile;
    .restart local v4    # "tmpOpPkg":Ljava/lang/String;
    .restart local v6    # "tmpPkg":Ljava/lang/String;
    .restart local v7    # "tmpResPkg":Ljava/lang/String;
    .restart local v10    # "tmpTag":Ljava/lang/String;
    .local v12, "tmpUser":Landroid/os/UserHandle;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 49
    invoke-direct/range {v0 .. v11}, Lcyanogenmod/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 62
    iput p4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    .line 63
    iput-object p5, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    .line 65
    iput p7, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    .line 66
    iput-object p8, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    .line 67
    iput-object p9, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    .line 68
    iput-wide p10, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    .line 69
    invoke-direct {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcyanogenmod/app/StatusBarPanelCustomTile;
    .locals 12

    .prologue
    .line 196
    new-instance v0, Lcyanogenmod/app/StatusBarPanelCustomTile;

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 197
    iget v4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    iget-object v5, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    iget v6, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    iget v7, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    .line 198
    iget-object v8, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    invoke-virtual {v8}, Lcyanogenmod/app/CustomTile;->clone()Lcyanogenmod/app/CustomTile;

    move-result-object v8

    iget-object v9, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    .line 196
    invoke-direct/range {v0 .. v11}, Lcyanogenmod/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomTile()Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    return v0
.end method

.method public getInitialPid()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    return-wide v0
.end method

.method public getResPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public persistableKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 172
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    :goto_0
    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    invoke-virtual {v1, p1, p2}, Lcyanogenmod/app/CustomTile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    iget-wide v2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 167
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
