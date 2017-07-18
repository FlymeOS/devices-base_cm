.class public abstract Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub;
.super Landroid/os/Binder;
.source "IAppSuggestProvider.java"

# interfaces
.implements Lcyanogenmod/app/suggest/IAppSuggestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/suggest/IAppSuggestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.suggest.IAppSuggestProvider"

.field static final TRANSACTION_getSuggestions:I = 0x2

.field static final TRANSACTION_handles:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string/jumbo v0, "cyanogenmod.app.suggest.IAppSuggestProvider"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/suggest/IAppSuggestProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 43
    if-nez p0, :cond_0

    .line 44
    return-object v1

    .line 46
    :cond_0
    const-string/jumbo v1, "cyanogenmod.app.suggest.IAppSuggestProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/suggest/IAppSuggestProvider;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcyanogenmod/app/suggest/IAppSuggestProvider;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 50
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 54
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 58
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 62
    :sswitch_0
    const-string/jumbo v3, "cyanogenmod.app.suggest.IAppSuggestProvider"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v4

    .line 67
    :sswitch_1
    const-string/jumbo v5, "cyanogenmod.app.suggest.IAppSuggestProvider"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 75
    :goto_0
    invoke-virtual {p0, v0}, Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub;->handles(Landroid/content/Intent;)Z

    move-result v2

    .line 76
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v4

    .line 73
    .end local v2    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v3, "cyanogenmod.app.suggest.IAppSuggestProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 90
    :goto_1
    invoke-virtual {p0, v0}, Lcyanogenmod/app/suggest/IAppSuggestProvider$Stub;->getSuggestions(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/app/suggest/ApplicationSuggestion;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 93
    return v4

    .line 88
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/app/suggest/ApplicationSuggestion;>;"
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
