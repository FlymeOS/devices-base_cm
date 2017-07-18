.class final Lcyanogenmod/app/suggest/ApplicationSuggestion$1;
.super Ljava/lang/Object;
.source "ApplicationSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/suggest/ApplicationSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcyanogenmod/app/suggest/ApplicationSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/suggest/ApplicationSuggestion;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    new-instance v0, Lcyanogenmod/app/suggest/ApplicationSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/app/suggest/ApplicationSuggestion;-><init>(Landroid/os/Parcel;Lcyanogenmod/app/suggest/ApplicationSuggestion;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcyanogenmod/app/suggest/ApplicationSuggestion$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/suggest/ApplicationSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/suggest/ApplicationSuggestion;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 40
    new-array v0, p1, [Lcyanogenmod/app/suggest/ApplicationSuggestion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcyanogenmod/app/suggest/ApplicationSuggestion$1;->newArray(I)[Lcyanogenmod/app/suggest/ApplicationSuggestion;

    move-result-object v0

    return-object v0
.end method
