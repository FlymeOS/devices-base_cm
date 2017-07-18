.class public final Lcyanogenmod/profiles/StreamSettings;
.super Ljava/lang/Object;
.source "StreamSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/StreamSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mStreamId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcyanogenmod/profiles/StreamSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/StreamSettings$1;-><init>()V

    .line 52
    sput-object v0, Lcyanogenmod/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "streamId"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 89
    iput p2, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 90
    iput-boolean p3, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/StreamSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 68
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/StreamSettings;
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 145
    .local v0, "event":I
    new-instance v2, Lcyanogenmod/profiles/StreamSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyanogenmod/profiles/StreamSettings;-><init>(I)V

    .line 146
    .local v2, "streamDescriptor":Lcyanogenmod/profiles/StreamSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "streamDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    return-object v2

    .line 147
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 148
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "streamId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 159
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 151
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    goto :goto_1

    .line 153
    :cond_3
    const-string/jumbo v3, "override"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    goto :goto_1

    .line 156
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 157
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Premature end of file while parsing stream settings"

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

.method public getStreamId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string/jumbo v0, "<streamDescriptor>\n<streamId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v0, "</streamId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v0, "</override>\n</streamDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 165
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 201
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 206
    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 198
    return-void

    :cond_1
    move v2, v4

    .line 208
    goto :goto_0

    :cond_2
    move v3, v4

    .line 210
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 123
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 115
    iput p1, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 114
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
    iget v1, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-boolean v1, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v1, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean v1, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 183
    return-void

    :cond_0
    move v1, v3

    .line 189
    goto :goto_0

    :cond_1
    move v2, v3

    .line 191
    goto :goto_1
.end method
