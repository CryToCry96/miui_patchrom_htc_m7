.class public Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.super Lcom/android/server/SystemService;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;,
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;,
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;,
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CPU_BOOST_TIME:I = 0x4c4b40

.field private static final MSG_CPU_BOOST:I = 0x1

.field private static final MSG_LAUNCH_BOOST:I = 0x2

.field private static final MSG_SET_PROFILE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PerformanceManager"


# instance fields
.field private final POWER_FEATURE_SUPPORTED_PROFILES:I

.field private final POWER_HINT_CPU_BOOST:I

.field private final POWER_HINT_LAUNCH_BOOST:I

.field private final POWER_HINT_SET_PROFILE:I

.field private final mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mCurrentActivityName:Ljava/lang/String;

.field private mCurrentProfile:I

.field private final mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mNumProfiles:I

.field private mPatterns:[Ljava/util/regex/Pattern;

.field private mPm:Landroid/os/PowerManagerInternal;

.field private mProfiles:[I


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    return v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)Z
    .locals 1
    .param p1, "profile"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileHasAppProfilesInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;IZ)Z
    .locals 1
    .param p1, "profile"    # I
    .param p2, "fromUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->applyProfile()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->cpuBoostInternal(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    .line 54
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    .line 57
    const/4 v3, -0x1

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    .line 58
    iput v6, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 64
    const/16 v3, 0x10

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_CPU_BOOST:I

    .line 65
    const/16 v3, 0x11

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_LAUNCH_BOOST:I

    .line 66
    const/16 v3, 0x30

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_SET_PROFILE:I

    .line 68
    const/16 v3, 0x1000

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_FEATURE_SUPPORTED_PROFILES:I

    .line 71
    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    .line 72
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    .line 262
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    .line 358
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 81
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 84
    const v4, 0x3f040006

    .line 83
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "activities":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 86
    array-length v3, v0

    new-array v3, v3, [Ljava/util/regex/Pattern;

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    .line 87
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 89
    aget-object v3, v0, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "info":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 91
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v3, v1

    .line 92
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    .end local v2    # "info":[Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/android/server/ServiceThread;

    const-string/jumbo v4, "PerformanceManager"

    .line 104
    const/4 v5, -0x7

    .line 103
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 105
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->start()V

    .line 107
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    .line 78
    return-void
.end method

.method private applyProfile()V
    .locals 3

    .prologue
    .line 242
    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 244
    return-void

    .line 248
    :cond_0
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    if-eqz v1, :cond_2

    .line 250
    const/4 v0, 0x0

    .line 259
    .local v0, "profile":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    .line 241
    return-void

    .line 252
    .end local v0    # "profile":I
    :cond_2
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    .line 254
    .restart local v0    # "profile":I
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->hasAppProfiles()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileHasAppProfilesInternal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileForActivity(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private cpuBoostInternal(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    if-lez p1, :cond_2

    const v0, 0x4c4b40

    if-gt p1, v0, :cond_2

    .line 230
    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-eqz v0, :cond_0

    .line 231
    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 232
    :cond_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    invoke-virtual {v0, v3}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    :goto_0
    return-void

    .line 237
    :cond_2
    const-string/jumbo v0, "PerformanceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid boost duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProfileForActivity(Ljava/lang/String;)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 217
    if-eqz p1, :cond_1

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    aget v1, v1, v0

    return v1

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private getProfileHasAppProfilesInternal(I)Z
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-le p1, v2, :cond_1

    .line 147
    :cond_0
    const-string/jumbo v0, "PerformanceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v1

    .line 151
    :cond_1
    if-ne p1, v0, :cond_3

    .line 152
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 155
    :cond_3
    return v1
.end method

.method private getUserProfile()I
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "performance_profile"

    .line 164
    const/4 v2, 0x1

    .line 162
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasAppProfiles()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    iget v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 142
    const-string/jumbo v3, "app_perf_profiles_enabled"

    .line 141
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 140
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 141
    goto :goto_0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method private declared-synchronized setPowerProfileInternal(IZ)Z
    .locals 7
    .param p1, "profile"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 180
    if-ltz p1, :cond_0

    :try_start_0
    iget v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-le p1, v4, :cond_1

    .line 181
    :cond_0
    const-string/jumbo v3, "PerformanceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 182
    return v2

    .line 190
    :cond_1
    if-eqz p2, :cond_2

    .line 191
    :try_start_1
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 192
    const-string/jumbo v5, "performance_profile"

    .line 191
    invoke-static {v4, v5, p1}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    :cond_2
    iget v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v4, :cond_3

    monitor-exit p0

    .line 196
    return v2

    .line 199
    :cond_3
    :try_start_2
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 203
    .local v0, "token":J
    iput p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    .line 205
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->removeMessages(I)V

    .line 206
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->removeMessages(I)V

    .line 207
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    .line 208
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    .line 209
    if-eqz p2, :cond_4

    move v2, v3

    .line 208
    :cond_4
    const/4 v6, 0x3

    invoke-static {v5, v6, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 207
    invoke-virtual {v4, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 213
    return v3

    .end local v0    # "token":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v3, 0x2

    .line 118
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_1

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    .line 121
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getFeature(I)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 122
    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lez v1, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    .line 124
    .local v0, "profile":I
    if-ne v0, v3, :cond_2

    .line 125
    const-string/jumbo v1, "PerformanceManager"

    const-string/jumbo v2, "Reverting profile %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 125
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 127
    invoke-direct {p0, v1, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    .line 133
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "profile":I
    :cond_0
    monitor-exit p0

    .line 117
    :cond_1
    return-void

    .line 130
    .restart local v0    # "profile":I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "profile":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 112
    const-string/jumbo v0, "cmperformance"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    const-class v0, Lcyanogenmod/power/PerformanceManagerInternal;

    new-instance v1, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 111
    return-void
.end method
