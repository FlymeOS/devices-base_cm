.class public final Lcyanogenmod/profiles/RingModeSettings;
.super Ljava/lang/Object;
.source "RingModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/RingModeSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/RingModeSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final RING_MODE_MUTE:Ljava/lang/String; = "mute"

.field public static final RING_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final RING_MODE_VIBRATE:Ljava/lang/String; = "vibrate"


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings$1;-><init>()V

    .line 53
    sput-object v0, Lcyanogenmod/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "normal"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcyanogenmod/profiles/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/RingModeSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "override"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 88
    iput-boolean p2, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 86
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/RingModeSettings;
    .locals 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 148
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 149
    .local v0, "event":I
    new-instance v2, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v2}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    .line 150
    .local v2, "ringModeDescriptor":Lcyanogenmod/profiles/RingModeSettings;
    :goto_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 152
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 153
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 162
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ringModeDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    return-object v2

    .line 156
    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "override"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    goto :goto_1

    .line 159
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    if-ne v0, v5, :cond_1

    .line 160
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Premature end of file while parsing ring mode settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const-string/jumbo v0, "<ringModeDescriptor>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v0, "</override>\n</ringModeDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->isOverride()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    const/4 v1, 0x2

    .line 135
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    const-string/jumbo v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    const/4 v1, 0x0

    .line 140
    :cond_0
    :goto_0
    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 141
    .local v0, "amgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 132
    .end local v0    # "amgr":Landroid/media/AudioManager;
    .end local v1    # "ringerMode":I
    :cond_1
    return-void

    .line 137
    .restart local v1    # "ringerMode":I
    :cond_2
    iget-object v2, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    const-string/jumbo v3, "vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 200
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 205
    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 197
    return-void

    :cond_1
    move v2, v4

    .line 206
    goto :goto_0

    :cond_2
    move v3, v4

    .line 208
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 113
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 188
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-boolean v1, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v1, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-boolean v1, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 183
    return-void

    :cond_0
    move v1, v3

    .line 188
    goto :goto_0

    :cond_1
    move v2, v3

    .line 190
    goto :goto_1
.end method
