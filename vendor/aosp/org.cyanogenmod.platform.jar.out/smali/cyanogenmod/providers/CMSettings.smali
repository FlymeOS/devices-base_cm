.class public final Lcyanogenmod/providers/CMSettings;
.super Ljava/lang/Object;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;,
        Lcyanogenmod/providers/CMSettings$NameValueCache;,
        Lcyanogenmod/providers/CMSettings$Validator;,
        Lcyanogenmod/providers/CMSettings$DiscreteValueValidator;,
        Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;,
        Lcyanogenmod/providers/CMSettings$InclusiveFloatRangeValidator;,
        Lcyanogenmod/providers/CMSettings$DelimitedListValidator;,
        Lcyanogenmod/providers/CMSettings$System;,
        Lcyanogenmod/providers/CMSettings$Secure;,
        Lcyanogenmod/providers/CMSettings$Global;,
        Lcyanogenmod/providers/CMSettings$1;,
        Lcyanogenmod/providers/CMSettings$2;,
        Lcyanogenmod/providers/CMSettings$3;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_USAGE:Ljava/lang/String; = "cyanogenmod.settings.ACTION_DATA_USAGE"

.field public static final ACTION_LIVEDISPLAY_SETTINGS:Ljava/lang/String; = "cyanogenmod.settings.LIVEDISPLAY_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "cmsettings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_MIGRATE_SETTINGS:Ljava/lang/String; = "migrate_settings"

.field public static final CALL_METHOD_MIGRATE_SETTINGS_FOR_USER:Ljava/lang/String; = "migrate_settings_for_user"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CMSettings"

.field private static final sAlwaysTrueValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sBooleanValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sColorValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;

.field private static final sUriValidator:Lcyanogenmod/providers/CMSettings$Validator;


# direct methods
.method static synthetic -get0()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sAlwaysTrueValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get1()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sBooleanValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get2()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sColorValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get3()Lcyanogenmod/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lcyanogenmod/providers/CMSettings;->sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Lcyanogenmod/providers/CMSettings$DiscreteValueValidator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcyanogenmod/providers/CMSettings$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 299
    sput-object v0, Lcyanogenmod/providers/CMSettings;->sBooleanValidator:Lcyanogenmod/providers/CMSettings$Validator;

    .line 302
    new-instance v0, Lcyanogenmod/providers/CMSettings$1;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sNonNegativeIntegerValidator:Lcyanogenmod/providers/CMSettings$Validator;

    .line 313
    new-instance v0, Lcyanogenmod/providers/CMSettings$2;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$2;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sUriValidator:Lcyanogenmod/providers/CMSettings$Validator;

    .line 326
    new-instance v0, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 325
    sput-object v0, Lcyanogenmod/providers/CMSettings;->sColorValidator:Lcyanogenmod/providers/CMSettings$Validator;

    .line 328
    new-instance v0, Lcyanogenmod/providers/CMSettings$3;

    invoke-direct {v0}, Lcyanogenmod/providers/CMSettings$3;-><init>()V

    sput-object v0, Lcyanogenmod/providers/CMSettings;->sAlwaysTrueValidator:Lcyanogenmod/providers/CMSettings$Validator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
