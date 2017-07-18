.class public final Lcyanogenmod/profiles/LockSettings;
.super Ljava/lang/Object;
.source "LockSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/LockSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/LockSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDirty:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/profiles/LockSettings;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcyanogenmod/profiles/LockSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings$1;-><init>()V

    .line 53
    sput-object v0, Lcyanogenmod/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/profiles/LockSettings;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/LockSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguard"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 115
    const-string/jumbo v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 116
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v2, 0x1

    .line 132
    .local v2, "enable":Z
    :goto_0
    :try_start_0
    invoke-interface {p2, v2}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    return-void

    .line 119
    .end local v2    # "enable":Z
    :cond_0
    iget v3, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    packed-switch v3, :pswitch_data_0

    .line 123
    :pswitch_0
    const/4 v2, 0x1

    .line 124
    .restart local v2    # "enable":Z
    goto :goto_0

    .line 126
    .end local v2    # "enable":Z
    :pswitch_1
    const/4 v2, 0x0

    .line 127
    .restart local v2    # "enable":Z
    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcyanogenmod/profiles/LockSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to set keyguard enabled state to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 166
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 171
    .local v1, "parcelableVersion":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    .line 177
    :cond_1
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 163
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 102
    iput p1, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    .line 101
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 152
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 155
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean v1, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 150
    return-void

    .line 156
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iget v0, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    return-void
.end method
