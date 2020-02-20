const selectLocation = (city, jobs) => {
    // debugger
    return {
        type: "SWITCH_LOCATION",
        city,
        jobs,
    };
};

export default selectLocation;
