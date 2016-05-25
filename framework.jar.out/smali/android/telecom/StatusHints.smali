.class public final Landroid/telecom/StatusHints;
.super Ljava/lang/Object;
.source "StatusHints.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/StatusHints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mIconResId:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mPackageName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Landroid/telecom/StatusHints$1;

    invoke-direct {v0}, Landroid/telecom/StatusHints$1;-><init>()V

    sput-object v0, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    .line 46
    iput-object p2, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 47
    iput p3, p0, Landroid/telecom/StatusHints;->mIconResId:I

    .line 48
    iput-object p4, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/StatusHints;->mIconResId:I

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/StatusHints$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telecom/StatusHints$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/telecom/StatusHints;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    :try_start_0
    iget-object v3, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    .local v1, "packageContext":Landroid/content/Context;
    :try_start_1
    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 132
    .end local v1    # "packageContext":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Cannot find package %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v0, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageContext":Landroid/content/Context;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/util/MissingResourceException;
    const-string v3, "Cannot find icon %d in package %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v0, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 138
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/telecom/StatusHints;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 139
    check-cast v0, Landroid/telecom/StatusHints;

    .line 140
    .local v0, "otherHints":Landroid/telecom/StatusHints;
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getPackageName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getPackageName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getIconResId()I

    move-result v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getIconResId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 145
    .end local v0    # "otherHints":Landroid/telecom/StatusHints;
    :cond_0
    return v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget v0, p0, Landroid/telecom/StatusHints;->mIconResId:I

    invoke-direct {p0, p1, v0}, Landroid/telecom/StatusHints;->getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/telecom/StatusHints;->mIconResId:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/StatusHints;->mIconResId:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 95
    iget-object v0, p0, Landroid/telecom/StatusHints;->mPackageName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 97
    iget v0, p0, Landroid/telecom/StatusHints;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    return-void
.end method
