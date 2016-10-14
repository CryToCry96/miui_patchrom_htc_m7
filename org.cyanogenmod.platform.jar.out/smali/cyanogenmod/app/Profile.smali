.class public final Lcyanogenmod/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/Profile$LockMode;,
        Lcyanogenmod/app/Profile$ExpandedDesktopMode;,
        Lcyanogenmod/app/Profile$DozeMode;,
        Lcyanogenmod/app/Profile$TriggerType;,
        Lcyanogenmod/app/Profile$TriggerState;,
        Lcyanogenmod/app/Profile$Type;,
        Lcyanogenmod/app/Profile$ProfileTrigger;,
        Lcyanogenmod/app/Profile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Profile"


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

.field private mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

.field private mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

.field private mDirty:Z

.field private mDozeMode:I

.field private mExpandedDesktopMode:I

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mProfileType:I

.field private mRingMode:Lcyanogenmod/profiles/RingModeSettings;

.field private mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcyanogenmod/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcyanogenmod/app/Profile$1;

    invoke-direct {v0}, Lcyanogenmod/app/Profile$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    .line 71
    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    .line 85
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 87
    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 89
    new-instance v0, Lcyanogenmod/profiles/BrightnessSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 91
    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 93
    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    .line 95
    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 385
    invoke-virtual {p0, p1}, Lcyanogenmod/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 384
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/Profile;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 371
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameResId"    # I
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    .line 71
    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    .line 85
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 87
    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 89
    new-instance v0, Lcyanogenmod/profiles/BrightnessSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 91
    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 93
    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    .line 95
    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 377
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    .line 378
    iput p2, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    .line 379
    iput-object p3, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    .line 380
    iput v1, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    .line 381
    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 376
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile;
    .locals 23
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1072
    const-string/jumbo v20, "nameres"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1073
    .local v19, "value":Ljava/lang/String;
    const/4 v15, -0x1

    .line 1074
    .local v15, "profileNameResId":I
    const/4 v14, 0x0

    .line 1076
    .local v14, "profileName":Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string/jumbo v21, "string"

    .line 1078
    const-string/jumbo v22, "cyanogenmod.platform"

    .line 1077
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1079
    if-lez v15, :cond_0

    .line 1080
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1084
    .end local v14    # "profileName":Ljava/lang/String;
    :cond_0
    if-nez v14, :cond_1

    .line 1085
    const-string/jumbo v20, "name"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1088
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    .line 1090
    .local v16, "profileUuid":Ljava/util/UUID;
    :try_start_0
    const-string/jumbo v20, "uuid"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1107
    :goto_0
    new-instance v13, Lcyanogenmod/app/Profile;

    invoke-direct/range {v13 .. v16}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 1108
    .local v13, "profile":Lcyanogenmod/app/Profile;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1109
    .local v9, "event":I
    :goto_1
    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v9, v0, :cond_11

    .line 1110
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v9, v0, :cond_10

    .line 1111
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1112
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v20, "uuids"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1113
    invoke-static/range {p0 .. p1}, Lcyanogenmod/app/Profile;->readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setSecondaryUuids(Ljava/util/List;)V

    .line 1115
    :cond_2
    const-string/jumbo v20, "statusbar"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1116
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setStatusBarIndicator(Z)V

    .line 1118
    :cond_3
    const-string/jumbo v20, "profiletype"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1119
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "toggle"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1120
    const/16 v20, 0x0

    .line 1119
    :goto_2
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setProfileType(I)V

    .line 1122
    :cond_4
    const-string/jumbo v20, "ringModeDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1123
    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/RingModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v18

    .line 1124
    .local v18, "smd":Lcyanogenmod/profiles/RingModeSettings;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V

    .line 1126
    .end local v18    # "smd":Lcyanogenmod/profiles/RingModeSettings;
    :cond_5
    const-string/jumbo v20, "airplaneModeDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1127
    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v4

    .line 1128
    .local v4, "amd":Lcyanogenmod/profiles/AirplaneModeSettings;
    invoke-virtual {v13, v4}, Lcyanogenmod/app/Profile;->setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    .line 1130
    .end local v4    # "amd":Lcyanogenmod/profiles/AirplaneModeSettings;
    :cond_6
    const-string/jumbo v20, "brightnessDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1131
    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/BrightnessSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/BrightnessSettings;

    move-result-object v5

    .line 1132
    .local v5, "bd":Lcyanogenmod/profiles/BrightnessSettings;
    invoke-virtual {v13, v5}, Lcyanogenmod/app/Profile;->setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V

    .line 1134
    .end local v5    # "bd":Lcyanogenmod/profiles/BrightnessSettings;
    :cond_7
    const-string/jumbo v20, "screen-lock-mode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1135
    new-instance v10, Lcyanogenmod/profiles/LockSettings;

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v10, v0}, Lcyanogenmod/profiles/LockSettings;-><init>(I)V

    .line 1136
    .local v10, "lockMode":Lcyanogenmod/profiles/LockSettings;
    invoke-virtual {v13, v10}, Lcyanogenmod/app/Profile;->setScreenLockMode(Lcyanogenmod/profiles/LockSettings;)V

    .line 1138
    .end local v10    # "lockMode":Lcyanogenmod/profiles/LockSettings;
    :cond_8
    const-string/jumbo v20, "expanded-desktop-mode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1139
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setExpandedDesktopMode(I)V

    .line 1141
    :cond_9
    const-string/jumbo v20, "doze-mode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1142
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setDozeMode(I)V

    .line 1144
    :cond_a
    const-string/jumbo v20, "profileGroup"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1145
    invoke-static/range {p0 .. p1}, Lcyanogenmod/app/ProfileGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v12

    .line 1146
    .local v12, "pg":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v13, v12}, Lcyanogenmod/app/Profile;->addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V

    .line 1148
    .end local v12    # "pg":Lcyanogenmod/app/ProfileGroup;
    :cond_b
    const-string/jumbo v20, "streamDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1149
    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/StreamSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/StreamSettings;

    move-result-object v17

    .line 1150
    .local v17, "sd":Lcyanogenmod/profiles/StreamSettings;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 1152
    .end local v17    # "sd":Lcyanogenmod/profiles/StreamSettings;
    :cond_c
    const-string/jumbo v20, "connectionDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1153
    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/ConnectionSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v6

    .line 1154
    .local v6, "cs":Lcyanogenmod/profiles/ConnectionSettings;
    iget-object v0, v13, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .end local v6    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_d
    const-string/jumbo v20, "triggers"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcyanogenmod/app/Profile;->readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Lcyanogenmod/app/Profile;)V

    .line 1162
    .end local v11    # "name":Ljava/lang/String;
    :cond_e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto/16 :goto_1

    .line 1098
    .end local v9    # "event":I
    .end local v13    # "profile":Lcyanogenmod/app/Profile;
    :catch_0
    move-exception v7

    .line 1099
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v20, "Profile"

    .line 1100
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "UUID not recognized for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1102
    const-string/jumbo v22, ".  New UUID generated: "

    .line 1100
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1103
    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1100
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1099
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1091
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 1092
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v20, "Profile"

    .line 1093
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Null Pointer - UUID not found for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1095
    const-string/jumbo v22, ".  New UUID generated: "

    .line 1093
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1096
    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1093
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1092
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1120
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "event":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "profile":Lcyanogenmod/app/Profile;
    :cond_f
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 1159
    .end local v11    # "name":Ljava/lang/String;
    :cond_10
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_e

    .line 1160
    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Premature end of file while parsing profle:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1166
    :cond_11
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v13, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 1168
    return-object v13
.end method

.method private static readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1026
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v4, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/UUID;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1028
    .local v2, "event":I
    :goto_0
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uuids"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1043
    return-object v4

    .line 1029
    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 1030
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1031
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "uuid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1033
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 1036
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "Profile"

    const-string/jumbo v6, "UUID not recognized"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1034
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1035
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "Profile"

    const-string/jumbo v6, "Null Pointer - invalid UUID"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Lcyanogenmod/app/Profile;)V
    .locals 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcyanogenmod/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1049
    .local v0, "event":I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "triggers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    return-void

    .line 1050
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1051
    invoke-static {p0, p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile$ProfileTrigger;

    move-result-object v1

    .line 1052
    .local v1, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    if-eqz v1, :cond_1

    .line 1053
    iget-object v2, p2, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-static {v1}, Lcyanogenmod/app/Profile$ProfileTrigger;->-get0(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    .end local v1    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 1055
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1056
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Premature end of file while parsing triggers"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V
    .locals 2
    .param p1, "profileGroup"    # Lcyanogenmod/app/ProfileGroup;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    return-void

    .line 472
    :cond_0
    invoke-virtual {p1}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    if-eqz v0, :cond_1

    .line 475
    return-void

    .line 477
    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    .line 479
    :cond_2
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 467
    return-void
.end method

.method public addSecondaryUuid(Ljava/util/UUID;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 771
    if-eqz p1, :cond_0

    .line 772
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 770
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v0, p1

    .line 453
    check-cast v0, Lcyanogenmod/app/Profile;

    .line 454
    .local v0, "tmp":Lcyanogenmod/app/Profile;
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 455
    const/4 v1, -0x1

    return v1

    .line 456
    :cond_0
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 457
    const/4 v1, 0x1

    return v1

    .line 459
    :cond_1
    return v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public doSelect(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardService"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1174
    const-string/jumbo v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1175
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v7, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "sd$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/profiles/StreamSettings;

    .line 1176
    .local v3, "sd":Lcyanogenmod/profiles/StreamSettings;
    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1177
    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v7

    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->getValue()I

    move-result v8

    invoke-virtual {v0, v7, v8, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1181
    .end local v3    # "sd":Lcyanogenmod/profiles/StreamSettings;
    :cond_1
    iget-object v7, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cs$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/profiles/ConnectionSettings;

    .line 1182
    .local v1, "cs":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1183
    invoke-virtual {v1, p1}, Lcyanogenmod/profiles/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_1

    .line 1187
    .end local v1    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_3
    iget-object v7, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v7, p1}, Lcyanogenmod/profiles/RingModeSettings;->processOverride(Landroid/content/Context;)V

    .line 1189
    iget-object v7, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v7, p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->processOverride(Landroid/content/Context;)V

    .line 1192
    iget-object v7, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v7, p1}, Lcyanogenmod/profiles/BrightnessSettings;->processOverride(Landroid/content/Context;)V

    .line 1194
    if-eqz p2, :cond_5

    .line 1196
    iget-object v7, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v7, p1, p2}, Lcyanogenmod/profiles/LockSettings;->processOverride(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    .line 1210
    :goto_2
    iget v7, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    if-eqz v7, :cond_4

    .line 1211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1212
    const-string/jumbo v8, "doze_enabled"

    .line 1213
    iget v9, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    if-ne v9, v5, :cond_6

    .line 1214
    :goto_3
    const/4 v6, -0x2

    .line 1211
    invoke-static {v7, v8, v5, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1172
    :cond_4
    return-void

    .line 1198
    :cond_5
    const-string/jumbo v7, "Profile"

    const-string/jumbo v8, "cannot process screen lock override without a keyguard service."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v5, v6

    .line 1213
    goto :goto_3
.end method

.method public getAirplaneMode()Lcyanogenmod/profiles/AirplaneModeSettings;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    return-object v0
.end method

.method public getBrightness()Lcyanogenmod/profiles/BrightnessSettings;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    return-object v0
.end method

.method public getConnectionSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1264
    iget-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGroup()Lcyanogenmod/app/ProfileGroup;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getDozeMode()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    return v0
.end method

.method public getExpandedDesktopMode()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 512
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Lcyanogenmod/app/ProfileGroup;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcyanogenmod/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    return v0
.end method

.method public getRingMode()Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public getScreenLockMode()Lcyanogenmod/profiles/LockSettings;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    return-object v0
.end method

.method public getSecondaryUuids()[Ljava/util/UUID;
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    iget-object v1, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/UUID;

    return-object v0
.end method

.method public getSettingsForConnection(I)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Lcyanogenmod/profiles/StreamSettings;
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/StreamSettings;

    return-object v0
.end method

.method public getStatusBarIndicator()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    return v0
.end method

.method public getStreamSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerState(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 395
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 396
    :goto_0
    if-eqz v0, :cond_1

    .line 397
    invoke-static {v0}, Lcyanogenmod/app/Profile$ProfileTrigger;->-get1(Lcyanogenmod/app/Profile$ProfileTrigger;)I

    move-result v1

    return v1

    .line 395
    :cond_0
    const/4 v0, 0x0

    .local v0, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    goto :goto_0

    .line 399
    .end local v0    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method public getTriggersFromType(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profileTrigger$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 410
    .local v0, "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 411
    .local v3, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v3}, Lcyanogenmod/app/Profile$ProfileTrigger;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 412
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .end local v0    # "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    .end local v3    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    .line 743
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 13
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 954
    const-string/jumbo v10, "<profile "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    iget v10, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    if-lez v10, :cond_0

    .line 956
    const-string/jumbo v10, "nameres=\""

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :goto_0
    const-string/jumbo v10, "\" uuid=\""

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string/jumbo v10, "\">\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    const-string/jumbo v10, "<uuids>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "u$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    .line 968
    .local v8, "u":Ljava/util/UUID;
    const-string/jumbo v10, "<uuid>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const-string/jumbo v10, "</uuid>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 959
    .end local v8    # "u":Ljava/util/UUID;
    .end local v9    # "u$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v10, "name=\""

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 972
    .restart local v9    # "u$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v10, "</uuids>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string/jumbo v10, "<profiletype>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getProfileType()I

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "toggle"

    :goto_2
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string/jumbo v10, "</profiletype>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string/jumbo v10, "<statusbar>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getStatusBarIndicator()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "yes"

    :goto_3
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string/jumbo v10, "</statusbar>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    if-eqz v10, :cond_2

    .line 983
    const-string/jumbo v10, "<screen-lock-mode>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/LockSettings;->writeXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 985
    const-string/jumbo v10, "</screen-lock-mode>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_2
    const-string/jumbo v10, "<expanded-desktop-mode>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget v10, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 990
    const-string/jumbo v10, "</expanded-desktop-mode>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const-string/jumbo v10, "<doze-mode>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    iget v10, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    const-string/jumbo v10, "</doze-mode>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/AirplaneModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 998
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/BrightnessSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 1000
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/RingModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 1002
    iget-object v10, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pGroup$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup;

    .line 1003
    .local v2, "pGroup":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v2, p1, p2}, Lcyanogenmod/app/ProfileGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_4

    .line 975
    .end local v2    # "pGroup":Lcyanogenmod/app/ProfileGroup;
    .end local v3    # "pGroup$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v10, "conditional"

    goto/16 :goto_2

    .line 979
    :cond_4
    const-string/jumbo v10, "no"

    goto :goto_3

    .line 1005
    .restart local v3    # "pGroup$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v10, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "sd$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcyanogenmod/profiles/StreamSettings;

    .line 1006
    .local v4, "sd":Lcyanogenmod/profiles/StreamSettings;
    invoke-virtual {v4, p1, p2}, Lcyanogenmod/profiles/StreamSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_5

    .line 1008
    .end local v4    # "sd":Lcyanogenmod/profiles/StreamSettings;
    :cond_6
    iget-object v10, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cs$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    .line 1009
    .local v0, "cs":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Lcyanogenmod/profiles/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_6

    .line 1011
    .end local v0    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_7
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1012
    const-string/jumbo v10, "<triggers>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "trigger$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 1014
    .local v6, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v6, p1, p2}, Lcyanogenmod/app/Profile$ProfileTrigger;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_7

    .line 1016
    .end local v6    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_8
    const-string/jumbo v10, "</triggers>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .end local v7    # "trigger$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v10, "</profile>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    iput-boolean v12, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 953
    return-void
.end method

.method public isConditionalType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 797
    iget v1, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 922
    iget-boolean v6, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    if-eqz v6, :cond_0

    .line 923
    return v7

    .line 925
    :cond_0
    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup;

    .line 926
    .local v2, "group":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v2}, Lcyanogenmod/app/ProfileGroup;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 927
    return v7

    .line 930
    .end local v2    # "group":Lcyanogenmod/app/ProfileGroup;
    :cond_2
    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "stream$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcyanogenmod/profiles/StreamSettings;

    .line 931
    .local v4, "stream":Lcyanogenmod/profiles/StreamSettings;
    invoke-virtual {v4}, Lcyanogenmod/profiles/StreamSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 932
    return v7

    .line 935
    .end local v4    # "stream":Lcyanogenmod/profiles/StreamSettings;
    :cond_4
    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    .line 936
    .local v0, "conn":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 937
    return v7

    .line 940
    .end local v0    # "conn":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v6}, Lcyanogenmod/profiles/RingModeSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 941
    return v7

    .line 943
    :cond_7
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v6}, Lcyanogenmod/profiles/AirplaneModeSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 944
    return v7

    .line 946
    :cond_8
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v6}, Lcyanogenmod/profiles/BrightnessSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 947
    return v7

    .line 949
    :cond_9
    const/4 v6, 0x0

    return v6
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 636
    .local v4, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 637
    .local v3, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 642
    .local v5, "startPosition":I
    const/4 v9, 0x2

    if-lt v4, v9, :cond_f

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    .line 646
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    .line 649
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 650
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    iput-object v9, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    .line 652
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 653
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v2, v10, v9

    .local v2, "parcel":Landroid/os/Parcelable;
    move-object v8, v2

    .line 654
    check-cast v8, Landroid/os/ParcelUuid;

    .line 655
    .local v8, "u":Landroid/os/ParcelUuid;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 658
    .end local v2    # "parcel":Landroid/os/Parcelable;
    .end local v8    # "u":Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    .line 662
    sget-object v9, Lcyanogenmod/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcyanogenmod/app/ProfileGroup;

    const/4 v10, 0x0

    array-length v11, v9

    :goto_3
    if-ge v10, v11, :cond_7

    aget-object v1, v9, v10

    .line 663
    .local v1, "group":Lcyanogenmod/app/ProfileGroup;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 665
    iput-object v1, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    .line 662
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 658
    .end local v1    # "group":Lcyanogenmod/app/ProfileGroup;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 660
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 669
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    .line 670
    sget-object v9, Lcyanogenmod/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcyanogenmod/profiles/StreamSettings;

    const/4 v10, 0x0

    array-length v11, v9

    :goto_4
    if-ge v10, v11, :cond_8

    aget-object v6, v9, v10

    .line 671
    .local v6, "stream":Lcyanogenmod/profiles/StreamSettings;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v6}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 674
    .end local v6    # "stream":Lcyanogenmod/profiles/StreamSettings;
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    .line 676
    sget-object v9, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcyanogenmod/profiles/ConnectionSettings;

    .line 675
    const/4 v10, 0x0

    array-length v11, v9

    :goto_5
    if-ge v10, v11, :cond_9

    aget-object v0, v9, v10

    .line 677
    .local v0, "connection":Lcyanogenmod/profiles/ConnectionSettings;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 680
    .end local v0    # "connection":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    .line 681
    sget-object v9, Lcyanogenmod/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcyanogenmod/profiles/RingModeSettings;

    iput-object v9, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 683
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    .line 684
    sget-object v9, Lcyanogenmod/profiles/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcyanogenmod/profiles/AirplaneModeSettings;

    iput-object v9, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 686
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 687
    sget-object v9, Lcyanogenmod/profiles/BrightnessSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcyanogenmod/profiles/BrightnessSettings;

    iput-object v9, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 689
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    .line 690
    sget-object v9, Lcyanogenmod/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcyanogenmod/profiles/LockSettings;

    iput-object v9, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 692
    :cond_d
    sget-object v9, Lcyanogenmod/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcyanogenmod/app/Profile$ProfileTrigger;

    const/4 v10, 0x0

    array-length v11, v9

    :goto_6
    if-ge v10, v11, :cond_e

    aget-object v7, v9, v10

    .line 693
    .local v7, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    iget-object v12, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-static {v7}, Lcyanogenmod/app/Profile$ProfileTrigger;->-get0(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 695
    .end local v7    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 699
    :cond_f
    add-int v9, v5, v3

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 632
    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 489
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string/jumbo v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/AirplaneModeSettings;

    .prologue
    .line 899
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 898
    return-void
.end method

.method public setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/BrightnessSettings;

    .prologue
    .line 916
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 915
    return-void
.end method

.method public setConditionalType()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 804
    iput v0, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    .line 805
    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 803
    return-void
.end method

.method public setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V
    .locals 2
    .param p1, "descriptor"    # Lcyanogenmod/profiles/ConnectionSettings;

    .prologue
    .line 1256
    iget-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    return-void
.end method

.method public setDozeMode(I)V
    .locals 2
    .param p1, "dozeMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 877
    if-ltz p1, :cond_0

    .line 878
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 879
    :cond_0
    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    .line 883
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 876
    return-void

    .line 881
    :cond_1
    iput p1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    goto :goto_0
.end method

.method public setExpandedDesktopMode(I)V
    .locals 2
    .param p1, "expandedDesktopMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 855
    if-ltz p1, :cond_0

    .line 856
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 857
    :cond_0
    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    .line 861
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 854
    return-void

    .line 859
    :cond_1
    iput p1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 715
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    .line 716
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 714
    return-void
.end method

.method public setProfileType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 733
    iput p1, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 732
    return-void
.end method

.method public setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    .line 821
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 820
    return-void
.end method

.method public setScreenLockMode(Lcyanogenmod/profiles/LockSettings;)V
    .locals 1
    .param p1, "screenLockMode"    # Lcyanogenmod/profiles/LockSettings;

    .prologue
    .line 838
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 837
    return-void
.end method

.method public setSecondaryUuids(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 760
    if-eqz p1, :cond_0

    .line 761
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 758
    :cond_0
    return-void
.end method

.method public setStatusBarIndicator(Z)V
    .locals 1
    .param p1, "newStatusBarIndicator"    # Z

    .prologue
    .line 788
    iput-boolean p1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 787
    return-void
.end method

.method public setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V
    .locals 2
    .param p1, "descriptor"    # Lcyanogenmod/profiles/StreamSettings;

    .prologue
    .line 1231
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 1230
    return-void
.end method

.method public setTrigger(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 423
    if-eqz p2, :cond_0

    .line 424
    if-gez p1, :cond_1

    .line 426
    :cond_0
    return-void

    .line 424
    :cond_1
    if-gt p1, v3, :cond_0

    .line 425
    if-ltz p3, :cond_0

    const/4 v1, 0x4

    if-gt p3, v1, :cond_0

    .line 429
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 431
    .local v0, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 432
    if-eqz v0, :cond_2

    .line 433
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    .line 422
    return-void

    .line 435
    :cond_3
    if-eqz v0, :cond_4

    .line 436
    invoke-static {v0, p3}, Lcyanogenmod/app/Profile$ProfileTrigger;->-set0(Lcyanogenmod/app/Profile$ProfileTrigger;I)I

    goto :goto_0

    .line 438
    :cond_4
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    new-instance v2, Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-direct {v2, p1, p2, p3, p4}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTrigger(Lcyanogenmod/app/Profile$ProfileTrigger;)V
    .locals 4
    .param p1, "trigger"    # Lcyanogenmod/app/Profile$ProfileTrigger;

    .prologue
    .line 449
    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v2

    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcyanogenmod/app/Profile;->setTrigger(ILjava/lang/String;ILjava/lang/String;)V

    .line 448
    return-void
.end method

.method public validateRingtones(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1064
    iget-object v2, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    .line 1065
    .local v0, "pg":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v0, p1}, Lcyanogenmod/app/ProfileGroup;->validateOverrideUris(Landroid/content/Context;)V

    goto :goto_0

    .line 1063
    .end local v0    # "pg":Lcyanogenmod/app/ProfileGroup;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 535
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 540
    .local v1, "sizePosition":I
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 544
    .local v2, "startPosition":I
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 545
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    :goto_0
    iget v6, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    if-eqz v6, :cond_5

    .line 551
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget v6, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    :goto_1
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    if-eqz v6, :cond_6

    .line 557
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    new-instance v6, Landroid/os/ParcelUuid;

    iget-object v9, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v6, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v6, p1, v8}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 562
    :goto_2
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 570
    :cond_0
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    :goto_3
    iget-boolean v6, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    if-eqz v6, :cond_9

    move v6, v7

    :goto_4
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget v6, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-boolean v6, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    if-eqz v6, :cond_a

    move v6, v7

    :goto_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 580
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    :goto_6
    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 587
    :cond_2
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    :goto_7
    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 594
    :cond_3
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    :goto_8
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    if-eqz v6, :cond_e

    .line 597
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/RingModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 602
    :goto_9
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    if-eqz v6, :cond_f

    .line 603
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/AirplaneModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 608
    :goto_a
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    if-eqz v6, :cond_10

    .line 609
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/BrightnessSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 614
    :goto_b
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    if-eqz v6, :cond_11

    .line 615
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v6, p1, v8}, Lcyanogenmod/profiles/LockSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    :goto_c
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v8, [Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 621
    iget v6, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget v6, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int v0, v6, v2

    .line 626
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 627
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    add-int v6, v2, v0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 532
    return-void

    .line 548
    .end local v0    # "parcelableSize":I
    :cond_4
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 554
    :cond_5
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 560
    :cond_6
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 563
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .local v5, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "u$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 565
    .local v3, "u":Ljava/util/UUID;
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 567
    .end local v3    # "u":Ljava/util/UUID;
    :cond_8
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Parcelable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .end local v4    # "u$iterator":Ljava/util/Iterator;
    .end local v5    # "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :cond_9
    move v6, v8

    .line 572
    goto/16 :goto_4

    :cond_a
    move v6, v8

    .line 574
    goto/16 :goto_5

    .line 576
    :cond_b
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 578
    new-array v9, v8, [Lcyanogenmod/app/ProfileGroup;

    .line 577
    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_6

    .line 583
    :cond_c
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 585
    new-array v9, v8, [Lcyanogenmod/profiles/StreamSettings;

    .line 584
    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_7

    .line 590
    :cond_d
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 592
    new-array v9, v8, [Lcyanogenmod/profiles/ConnectionSettings;

    .line 591
    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    .line 600
    :cond_e
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 606
    :cond_f
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 612
    :cond_10
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 618
    :cond_11
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c
.end method
